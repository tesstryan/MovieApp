class PostsController < ApplicationController

def index
  @posts = Posts.all
end

def show
  @post = Posts.find_by(id: params[:id])
end

def new
end

def create
  a = Posts.new
  a.title = params[:title]
  a.description = params[:description]
  a.year = params[:year]
  a.save

  redirect_to posts_url
end

def edit
  @post = Posts.find_by(id: params[:id])
end

def update
  a = Posts.find_by(id: params[:id])
  a.title = params[:title]
  a.description = params[:description]
  a.year = params[:year]
  a.save

  redirect_to posts_url
end

def destroy
  @destroy_post = Posts.find_by(id: params[:id])
  @destroy_post.destroy

  redirect_to posts_url
  end

end
