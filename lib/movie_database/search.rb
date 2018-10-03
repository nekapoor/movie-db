module MovieDatabase

	module Search
		class << self
			def by_query(query)
				Tmdb::Search.movie(query).results.map { |movie| MovieDatabase::Preview.new(movie) }
			end

			def by_id(movie_id)
				tmdb_movie = Tmdb::Movie.detail(movie_id)
				MovieDatabase::Details.new(tmdb_movie)
			end
		end
	end

end