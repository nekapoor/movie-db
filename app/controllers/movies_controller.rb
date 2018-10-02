class MoviesController < ApplicationController

	def show
		@movie = MovieDatabase::Search.by_id(params[:id])
	end

end