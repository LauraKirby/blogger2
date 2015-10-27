require "spec_helper"

describe Post do
	#see factories/post.rb for factory
	it "has a valid factory" do
		#FactoryGirl method "create"
		post = create(:post)
		#RSPEC be_valid matcher verifies that our new factory does indeed return a valid contact
		expect(post).to be_valid
	end 
	
	it "is invalid without a title" do
		post = build(:post, title: nil)
		expect(post).not_to be_valid 
	end 

  
  it "has initial state of unpublished" do
  end

  it "state can be changed to published" do

  end

  it "belongs to a user" do

  end

  it "once deleted is no longer searcheable" do

  end
end
