class Seen < ActiveRecord::Base
	validates_uniqueness_of :movie_id

	def self.add(args)
		Seen.create({
				movie_id: args[:id],
				image_path: args[:image_path]
		})
	end


end