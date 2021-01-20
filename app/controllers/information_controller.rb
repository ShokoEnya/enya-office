class InformationController < ApplicationController
  def index
    @information = Information.order('created_at DESC')
  end
  
  def new
    @information = Information.new
  end

  def create
    @information = Information.new(info_params)
    if @information.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def info_params
    params.require(:information).permit(:title, :text)
  end
end
