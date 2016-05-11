
class MovieList
  attr_reader :movies
  def initialize
    @list_size = nil
    @movies = []
  end

  def list_imdb!(movies, list_size = 9)
    @movies = movies[0..list_size]
  end
end
