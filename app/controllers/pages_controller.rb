class PagesController < ApplicationController
  before_filter :help

  def help
    @current_page = request.env['PATH_INFO']
    @categories = Category.all
  end

  def index
  end

  def about
  end

  def why
  end

  def show
    
  end

end
