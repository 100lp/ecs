class PagesController < ApplicationController
  before_filter :help

  def help
    @current_page = request.env['PATH_INFO']
  end

  def index
  end

  def about
  end

  def partners
  end

  def about
  end

  def why
  end

  def insurance    
  end

  def tehosmotr
    
  end

  def show
    
  end

  def osago
    
  end

  def green
    
  end

end
