class ArticlesController < ApplicationController
	before_filter :help
	def help
		@article = Article.find(params[:id])
		@id = params[:id]
    @current_page = request.env['PATH_INFO']
    @categories = Category.all
  end
end
