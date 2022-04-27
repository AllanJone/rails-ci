class Api::V1::PostsController < ApplicationController
    def index
      @posts = Post.all
      render json: @posts
    end
   
    def create
      @post = Post.create post_params
      
      if @post.valid?
        render json: @post, status: :created
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
    
    private
   
    def post_params
      params.require(:post).permit(:title, :content)
    end
  end