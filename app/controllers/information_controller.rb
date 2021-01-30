class InformationController < ApplicationController
  before_action :authenticate_user!, except: :index

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

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(info_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    information = Information.find(params[:id])
    information.destroy
    redirect_to root_path
  end

  private

  def info_params
    params.require(:information).permit(:title, :text)
  end
end
