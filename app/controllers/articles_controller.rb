class ArticlesController < ApplicationController
	before_filter :help
	def help
		@id = params[:id]
    @current_page = request.env['PATH_INFO']
  end
end
