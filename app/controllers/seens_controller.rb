class SeensController < ApplicationController

  def add
    @seen = Seen.add(params)
    @seen_list = Seen.all
    respond_to do |format|
      format.js
    end
  end

  def remove
    @seen = Seen.where(movie_id: params[:id]).first
    @seen.destroy
    @seen_list = Seen.all
    respond_to do |format|
      format.js
    end
  end

end