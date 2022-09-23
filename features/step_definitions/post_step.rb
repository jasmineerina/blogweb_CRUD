Given('I am on the new post page') do
    @params = {title: "", content: ""}
  end
  
  When('I fill the {string} with {string}') do |params, string|
    @params [params] = string
  end
  
  Then('I success create post') do
    @post = Post.new(@params)
    @post.save
  end