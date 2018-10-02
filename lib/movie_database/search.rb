module MovieDatabase

	module Search
		class << self
			def by_query(query)
				Tmdb::Search.movie(query).results.map { |movie| MovieDatabase::Preview.new(movie) }
			end

			def by_id(movie_id)
				Tmdb::Movie.detail(movie_id).map { |movie| MovieDatabase::Details.new(movie) }
			end
		end
	end

end