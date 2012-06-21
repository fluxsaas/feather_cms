module FeatherCms
  class ApplicationController < ActionController::Base
    
    private  
    def all_pages
      return @all_pages if @all_pages.present?
      @all_pages = Page.all
    end
    helper_method :all_pages

  end
end
