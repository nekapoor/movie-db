module MovieDatabase

  class Preview
    include ActionView::Helpers::AssetTagHelper 

    attr_reader :movie
    IMAGE_BASE = "https://image.tmdb.org/t/p/w500"

    def initialize(movie)
      @movie = movie
    end

    def poster_image
      return 'no_image_available.png' if movie.poster_path.blank?
      [IMAGE_BASE, movie.poster_path].join("")
    end

    def title
      movie.original_title
    end

    def overview
      movie.overview
    end

    def shortened_overview(char_count = 100)
      movie.overview[0..char_count] + "..."
    end

    def id
      movie.id
    end

    def on_watch_list?
      @watch_list ||= WatchList.where(movie_id: id)
      @watch_list.count > 0
    end

    def on_seen_list?
      @seen ||= Seen.where(movie_id: id)
      @seen.count > 0
    end

  end

end