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

    def poster_image
      [IMAGE_BASE, movie.poster_path].join("")
    end

  end

end