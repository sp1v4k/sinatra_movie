
class MovieList
  attr_reader :movies
  def initialize
    @list_size = nil
    @movies = []
  end

  def list_imdb!(movies, list_size)
    list_size -= 1
    list_size = 9 if list_size <= 0
    @movies = movies[0..list_size]
  end
end
