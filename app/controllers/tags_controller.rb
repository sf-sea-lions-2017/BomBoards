class TagsController < ApplicationController
  # def index

  # end

  # def new

  # end

  def show
  	@tag = Tag.find(params[:id])
  end

  # def edit
  #
  # end
  #
  # def update
  #
  # end

  # def destroy

  # end

 
  
end
