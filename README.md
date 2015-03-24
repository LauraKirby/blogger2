### README


**SUBMITTING COMPLETED ASSIGNMENT**

* Clone this repository, create a branch and commit your changes there and push. 
* Once work is completed, create a new Pull Request between master and your branch: https://github.com/doximity/blgr/compare

**TASKS**

* Create Post resource, seed with 1000 posts
* Add basic account creation and login as well as specs
* Add the ability to create and delete posts without using any JS
* Add the ability to edit posts using Backbone and Coffeescript
* Add basic searching of post titles to the index page
* Add the ability to filter based on post state (published/unpublised) using scopes/AREL
* Ensure there are proper indicies on the tables to improve performance.
* Showcase usage of fragment caching on the posts index, including cache-busting on edit
* There's a query performance issue on posts/index that needs addressed
* Fill in the specs
* Submit a github pull-request when done
* Update the README with any additional instructions we might need to test it

**NOTES**

* We care about style, simplicity and good conventions.
* Use what the language/framework provides, i.e. don't write raw SQL when you have AR/AREL nor
  should you re-write getter/setter methods when you have attr_accessors.
* Follow this style guide for Ruby: https://github.com/styleguide/ruby.
* If you get stuck or have clarification questions, ask us right away. Bruno and Jey will be
  available all day to answer questions.

The instructions above are somewhat vague and that's OK, we expect you to make some assumptions.
