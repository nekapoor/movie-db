class StaticController < ApplicationController

	def index
		@watch_lists = WatchList.all
		@seen_list = Seen.all
		@popular = MovieDatabase::Popular.all.sample(4)
	end

	def search
		@movies = MovieDatabase::Search.by_query(params[:q])
	end

end