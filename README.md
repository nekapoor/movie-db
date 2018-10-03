# README


#### How To Access The Application

I pushed it up to Heroku. You can find it at [http://movie-database-123.herokuapp.com](http://movie-database-123.herokuapp.com). 

* If you notice a lag in load time, it's because I'm running it on a free dyno on Heroku. These dynos go to sleep with any sort of inactivity so an initial load may take longer than desired.

* There may be some movies in the watch list or seen list when you load it up. If you do, this is from testing previously.

#### How To Access The Code

You can find it at [https://github.com/nekapoor/movie-db](https://github.com/nekapoor/movie-db)

#### General Thoughts

##### What went well

I think the interface I built was pretty decent. It covers all the bases of what was asked for in the challenge and it's fairly clear.  The biggest challenge I found outside of the UI/UX, was making the application single page and more "react"-like. I think I did that pretty well using Rails, JQuery and AJAX. 

##### What I would have done with more time

* Fix responsiveness. I wasn't able to make the site look good enough on mobile. 

* Write some tests. I spent more time on the UI/UX portion of this project because I think it's important to build for that meaningfully. But that came at the expense of writing tests, which are also important. 

* DRY up some code. There is duplicated code in places. With more time, I would have moved more of these into partials. 

* Better naming. I used WatchList as a data model, which is fine. But then I used 'Seen' as another data model name. I should have named it SeenList to keep the symmetry.  
