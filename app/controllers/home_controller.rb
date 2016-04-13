class HomeController < ApplicationController
  def index
    @grunts = Grunt.includes(:zombie, :comments).order(created_at: :desc).limit(10)
    @blogs = Blog.order(created_at: :desc).limit(10)
  end

  def raise_zombie
    ZombieRaiser.new.raise_zombie
    redirect_to root_path
  end
end
