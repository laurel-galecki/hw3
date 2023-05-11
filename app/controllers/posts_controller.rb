class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
  #   # find a Company
  @company = Company.find_by({"id" => params["id"]})
  @contacts = Contact.where({"company_id" => @company["id"]})
  #   # render companies/show view with details about Company
  end

  def new
@post = Post.new  
end
  
  def create

  @post = Post.new

  @post["title"] = params["post"]["title"]
  @post["entry"] = params["post"]["entry"]
  @post["date"] = params["post"]["date"]

  @post.save

  redirect_to "/posts"
  end

end
