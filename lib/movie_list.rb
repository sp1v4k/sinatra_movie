
class MovieList
  attr_reader :movies
  def initialize(list_size = 8)
    @list_size = list_size
    @movies = []
  end

  def list_imdb!(movies)
    @movies = movies[0..@list_size]
  end
end
