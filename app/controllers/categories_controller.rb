class CategoriesController < ApplicationController
	before_filter :help

  def help
    @current_page = request.env['PATH_INFO']
  end
	def show
	end
end
