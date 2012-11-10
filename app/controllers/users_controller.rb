class UsersController < ApplicationController
  load_and_authorize_resource
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to(root_url, 
        notice: "Created User with email #{@user.email} and the #{@user.role} role.")
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render "new"
    end
  end

  def index
    if params[:directory]
      @board = Board.find_by_directory(params[:directory])
      @users = @board.users
    elsif @current_user.operator?
      @users = User.all
    end
  end
end
