### Start Here

**Please read instructions carefully**

* Clone this repository, create a local git branch and commit your changes to said branch
* Push branch to github
* Once work is completed, create a new Pull Request between master and your branch: https://github.com/doximity/blgr2/compare
* Notify us you've you've completed the assignment

**TASKS**

* Add basic account creation and login using authlogic
* Create Post resource, seed with 1000 posts. A post should belong to a user
* Add a Posts CRUD implementation using one of the following front-end libs/frameworks: Backbone, React, Angular or Ember
* Add ability to filter posts by titles to the posts index page (using MySQL `like` is fine)
* Add listing of posts on the user show page, list post title and created_at date for each post
* Add the ability to filter based on post state (published/unpublised) using scopes/AREL
* Ensure there are proper indicies on the tables to improve performance.
* Use fragment caching on the posts index, include cache-busting on edit
* Showcase your ability to write specs


**NOTES**

* Avoid spending time pulling in styling frameworks like grid's or bootstrap, we're not concerned with the look of the app
* We care about style, simplicity and good conventions.
* Use what the language/framework provides, i.e. don't write raw SQL when you have AR/AREL nor
  should you re-write getter/setter methods when you have attr_accessors.
* Follow this style guide for Ruby: https://github.com/styleguide/ruby.
* If you get stuck or have clarification questions, ask us right away.
* The instructions above are somewhat vague and that's OK, we expect you to make some decisions.
