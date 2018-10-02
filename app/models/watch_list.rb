class WatchList < ActiveRecord::Base
	validates_uniqueness_of :movie_id

	def self.add(args)
		WatchList.create({
				movie_id: args[:id],
				image_path: args[:image_path]
		})
	end

end