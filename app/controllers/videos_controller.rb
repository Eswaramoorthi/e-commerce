class VideosController < ApplicationController

  def index
    @videos = Video.all   
  end

  def show
    @video = Video.find(params[:id])   
  end

  def new
    @video = Video.new   
  end

  def subscribe
    #@videos = Video.all
  end

  def create
    @video = Video.new(video_params)   
    if @video.save   
      flash[:notice] = 'Video added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit video!'   
      render :new   
    end  
  end

  def edit
    @video = Video.find(params[:id])   
  end

  def update
    @video = Video.find(params[:id])   
    if @video.update_attributes(video_params)   
      flash[:notice] = 'Video updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit video!'   
      render :edit   
    end
  end

  def destroy
    @video = Video.find(params[:id])   
    if @video.delete   
      flash[:notice] = 'video deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this video!'   
      render :destroy   
    end   
  end

  def video_params   
    params.require(:video).permit(:name, :price, :description, :movie)   
  end
end
