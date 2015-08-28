class PagesController < ApplicationController

  def new

  end

  def create

    @model = Page.new(permitted_params)

    respond_to do |format|
      if @model.save
        format.json { render json: @model, status: :created, :layout => false }
      else
        format.json { render json: @model.errors, status: :unprocessable_entity, :layout => false }
      end
    end

  end

  def show

    @page = Page.where(:code => params[:code]).last

    respond_to do |format|
        format.html { render :show, :layout => false }
    end

  end

  private

  def permitted_params
    params.require(:page).permit(:title, :description, :image_url, :original_url).merge({})
  end


end
