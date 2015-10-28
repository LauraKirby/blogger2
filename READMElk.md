##Getting Organized - TASKS 
1. Write specs
	- Set up RSPEC & Capybara  

2. Create User/Account  
	A. A user will have: first_name, email, password, persistence_token, password_salt

3. Create Post resource  
	A. Seed with 1000 posts  
	B. A post belongs to a user  
		- One to many would work well here. One user may have many posts.  
	C. Post properties: title, content, published (boolean default: false)
		- Rails will create both user_id and created_at properties for us

4. Ensure there are proper indicies on the tables to improve performance.

5. Use fragment caching on the posts index, include cache-busting on edit

6. Implement CRUD for Posts using Angular  
	A. Will use ng-route for front-end routing  
	B. Views will be made using partials in the public directory   

7. Post Index Page  
	A. List all posts.  
	B. Add ability to filter posts by titles (using MySQL LIKE is fine)  

8. User Show Page  
	A. List a user's posts  
  B. List post title and created_at date for each post  

9. Add the ability to filter based on post state (published/unpublised) using scopes/AREL  

10. Add authentication using authlogic  
	- will need this sooner, so that i do not built current_user logic if it will be given to me with authlogic
	- Review Documentation:  
			https://github.com/binarylogic/authlogic  
			https://github.com/binarylogic/authlogic_example  

##NOTES
1. Don't add a styling framework (e.g. bootstrap). We're not concerned with the look of the app  
2. We care about style, simplicity and good conventions.  
3. Use what the language/framework provides, i.e. don't write raw SQL when you have AR/AREL nor should you re-write getter/setter methods when you have attr_accessors.  
4. Follow this style guide for Ruby: https://github.com/styleguide/ruby.  
5. If you get stuck or have clarification questions, ask us right away.  
6. The instructions above are somewhat vague, we expect you to make some decisions.  

##WHEN DONE: 
1. Create a new Pull Request between master and your branch: https://github.com/doximity/blgr2/compare  
2. Notify us you've you've completed the assignment  

##GETTING STARTED: 
1. Clone this repository, create a local git branch and commit your changes to said branch.
2. DO NOT PUSH TO MASTER, DO NOT FORK THE REPOSITORY
3. Push branch to github
	- My branch name is "solution"