class CategoriesController < ApplicationController
	before_filter :help

  def help
    @current_page = request.env['PATH_INFO']
    @categories = Category.all
  end
	def show
		render(params[:category_name])
	end
end
