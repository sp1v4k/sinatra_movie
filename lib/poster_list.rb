require "imdb"

class PosterList
  attr_reader :posters
  def initialize
    @posters = []
  end

  def poster_imdb!(movies)
    movies.each do |movie|
      search = Imdb::Movie.new(movie.id)
      @posters << search.poster
    end
  end
end
