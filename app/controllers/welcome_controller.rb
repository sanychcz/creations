class WelcomeController < ApplicationController
  def index
    @posts = Post.recent
  end
end
