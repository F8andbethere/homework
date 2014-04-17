Week 5 Day 2 - Morning Class Notes
================

Topics:
* URLs
* Touyinh Helpers
* View Helpers

## View Helpers

View helpers are basically just methods that are available in the view layer (erb).

Common examples of these are format helpers to help you format numbers (eg. money).

These methods take in some data and returna string representation of that data (since it's in the view layer which is all about data representation).

The msot common and relevant of this so far is the 'link_to' view helper. Since this generates an <a> tag, it's very view specific.

# URL Helpers

Some helpers are auto generated for us based on out routes. These are methods that retun the URL string se we don't have to hard-code the tring in the erb.

In our rotten magoes tutorail, the 'resources :movies' generate a bunchof routes, most of which have a "url helper" method such as 'movies_path' or 'movie_path(id)'.

You can view the list of routes and theur appropriate URL methods by either using 'rake routes' from the CLI or going to a 404 page.

# Rails Routing vs Controllers

Routes are like our gateway into what methods (actions) are exposed to the outside world (the users).

So if you have an index method/action in your UsersController, that doesn't mean anything in terms of what the user can do. The route to allow users to hit/call that method is necessary before that controller action can even function.

In other words, you'll see a 404 page unless there's a valid route for that HTTP path-verb combination.

## Readings

Read Form Helpers and Routing on the Rails guides.
