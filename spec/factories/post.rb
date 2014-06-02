FactoryGirl.define do
  factory :post, :class => 'Post' do
  	title 'First Post'
  	body 'This is in the body. This is not the title.'

  	factory :post1 do
  		title 'Post 1'
  		body 'This is post1.  Not to be confused with post.'
  	end

  end
end
