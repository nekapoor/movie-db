module MovieDatabase
	module Popular
		class << self
			def all
				Tmdb::Movie.popular.results.map { |movie| MovieDatabase::Preview.new(movie) }
			end
		end
	end
end