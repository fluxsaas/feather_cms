require_dependency "feather_cms/application_controller"

module FeatherCms
  class PagesController < ApplicationController

    # GET /pages
    # GET /pages.json
    def index
      @pages = Page.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @pages }
      end
    end
  
    # GET /pages/1
    # GET /pages/1.json
    def show
      @page = Page.find_by_name(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @page }
      end
    end
  
    # GET /pages/new
    # GET /pages/new.json
    def new
      @page = Page.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @page }
      end
    end
  
    # GET /pages/1/edit
    def edit
      @page = Page.find_by_name(params[:id])
    end
  
    # POST /pages
    # POST /pages.json
    def create
      @page = Page.new(params[:page])
  
      respond_to do |format|
        if @page.save
          format.html { redirect_to @page, notice: 'Page was successfully created.' }
          format.json { render json: @page, status: :created, location: @page }
        else
          format.html { render action: "new" }
          format.json { render json: @page.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /pages/1
    # PUT /pages/1.json
    def update
      @page = Page.find_by_name(params[:id])
  
      respond_to do |format|
        if @page.update_attributes(params[:page])
          format.html { redirect_to @page, notice: 'Page was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @page.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /pages/1
    # DELETE /pages/1.json
    def destroy
      @page = Page.find_by_name(params[:id])
      @page.destroy
  
      respond_to do |format|
        format.html { redirect_to pages_url }
        format.json { head :no_content }
      end
    end


    def preview
      @page = Page.where(name: params[:id], status: 'published').first
      
      # TODO:  DRY
      if @page
        render inline: @page.content, type: @page.template_type,  layout: @page.layout
      else 
        # we should render the main app
        if defined?(Rails)
          render :file => Rails.root.to_s + '/public/404.html', layout: false
        else
          render :status => 404
        end
      end
    end

    def published
      @page = Page.where(name: params[:id], status: 'published').first
      
      # TODO:  DRY
      if @page
        render inline: @page.content, type: @page.template_type,  layout: @page.layout
      else 
        # we should render the main app
        if defined?(Rails)
          render :file => Rails.root.to_s + '/public/404.html', layout: false
        else
          render :status => 404
        end
      end
    end

  end
end
