class WatchListsController < ApplicationController

  def add
    @watch_list = WatchList.add(params)
    @watch_lists = WatchList.all
    respond_to do |format|
      format.js
    end
  end

  def remove
    @watch_list = WatchList.where(movie_id: params[:id]).first
    @watch_list.destroy
    @watch_lists = WatchList.all
    respond_to do |format|
      format.js
    end
  end

end