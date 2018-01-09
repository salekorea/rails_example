class VideoplayController < ApplicationController
  def video
      @video = Video.find(params[:id])
      @subtitle = Subtitle.where(video_id: params[:id])
  end
end
