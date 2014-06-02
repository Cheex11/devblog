require 'spec_helper'

describe Post do
	it { should validate_presence_of :title }

	it 'should show the title of a post' do
		post = FactoryGirl.create(:post)
		post.title.should eq 'First Post'
	end

	it 'should keep all posts' do
		post = FactoryGirl.create(:post)
		post1 = FactoryGirl.create(:post1)
		Post.all.should eq [post, post1]
	end
end
