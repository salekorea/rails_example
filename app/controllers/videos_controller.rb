class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
    @subtitle = Subtitle.where(video_id: params[:id])
  end
end
