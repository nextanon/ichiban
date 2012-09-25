# Ichiban
### *Modern Imageboard software*

I have decided to create an imageboard software called Ichiban. An imageboard is similar in appearance to common bulletin board systems (BBS). There are few imageboards left that are still active save for the Japanese, 2Chan, and American, 4Chan. Functional Imageboard software is rare as most projects have become obsolete or abandon. My goal is to create a replacement software that is similar to the legacy imageboard systems made in the 90s, while improving the user experience.
## What is an imageboard?
Unlike a BBS, imageboards do not have registration. User submissions exist only until new content has pushed old content off a set amount of pages. Additionally, posts have a lifespan where users are still allowed to reply; all posts are fated to eventually fall off the board. It could be said that the greatest difference between an imageboard and a BBS is the culture. Without registration, submitted content is judged only on quality, not who posted. An imageboard does have a name field to identify the poster and a feature called tripcodes. A user named John may append a tripcode to the end of his name and a password which will be inputted into a one way hashing algorithm. The input, `John#test`, will output as `John!.CzKQna1OU`. No one can impersonate John unless he shares his password. Tripcodes are relatively weak hashes but this is not a problem since the output is for authentication, not authorization. The weak nature of the algorithm has even birthed a few brute force programs to find memorable outputs (e.g. `^vp*!sA3` → `!REDREDLOGo`). It is important to note that the use of tripcodes is generally discouraged. Imageboards emphasize content; a poster's attempt to constantly single themselves out is often met with hostility.
## Issues
The dated design of a imageboard software has left much to be desired. Posts are view in chronological order and grouped into viewable threads. Users can create back-links to previous comments by appending two greater-than arrows (`>>`) and the post's number. `>>123`, will link to post 123 and focus the user's browser to the comment when clicked. Following a conversation can become difficult when many users have commented in a thread, even more so when post numbers increase to unmemorable numbers. While tripcodes provide a means to identify users, the interface does not easily differentiate users. 

Many imageboard softwares have sprung up over the last 10 years however each project has been abandon or left in an unusable state. The imageboard softwares “Futaba”, “Futallaby”, “Wakaba”, and “Kusaba” have all risen in popularity at some point and have been forgotten. 4Chan's “Yotsuba” is updated frequently however the project is not open source.

## Proposal
I want to create Ichiban as an alternative to the dated imageboard softwares. My goal is to make an project that is open source, has an updated user interface and remains easy to deploy. Ichiban will be built with Ruby on Rails, an open source web framework designed for modularity and agile development. Heroku, a platform-as-a-service provider, will be used to serve the site and host uploaded images. The source code will be stored on Github and made public under the Creative Commons Attribution-ShareAlike 3.0 Unported License.

The project's development methodology will be README driven. The README methodology uses a README file to steer development and remain on track with what prospective users expect out the software; the README file has been included in this proposal.  Core functionality will be backed by automated integration tests, emphasizing practicality over excess test coverage.

I estimate that the project will be in a usable state within the next 2 months and ready for production use by January 2012. I am excited not only deploy the project, but to have the open source community contribute additional functionality.