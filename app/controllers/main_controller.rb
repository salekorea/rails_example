class MainController < ApplicationController

  def home
    @videos = Video.all
  end
end
