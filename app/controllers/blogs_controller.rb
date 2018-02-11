class BlogsController < ApplicationController
  load_and_authorize_resource
  decorates_assigned :blog

  respond_to :html

  def create
    @blog = current_user.blogs.build(blog_params)
    @blog.save
    respond_with @blog
  end

  def update
    @blog.update(blog_params)
    respond_with @blog
  end

  def destroy
    @blog.destroy
    respond_with @blog
  end

  private

  def blog_params
    params.require(:blog).permit(:name, :content, :user_id)
  end
end
