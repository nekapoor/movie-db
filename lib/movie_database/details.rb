module MovieDatabase

  class Details

    attr_reader :movie
    IMAGE_BASE = "https://image.tmdb.org/t/p/w500"

    def initialize(movie)
      @movie = movie
    end

    def id
      movie.id
    end

    def title
      movie.original_title
    end

    def overview
      movie.overview
    end

    def release_date
      movie.release_date
    end

    def poster_image
      return 'no_image_available.png' if movie.poster_path.blank?
      [IMAGE_BASE, movie.poster_path].join("")
    end

    def backdrop_path
      [IMAGE_BASE, movie.backdrop_path].join("")
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