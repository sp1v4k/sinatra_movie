require "imdb"

class PosterList
  attr_reader :posters
  def initialize
    @posters = []
  end

  def poster_0!(movies)
    search = Imdb::Movie.new(movies[0].id)
    @posters << search.poster
  end

  def poster_1!(movies)
    search = Imdb::Movie.new(movies[1].id)
    @posters << search.poster
  end

  def poster_2!(movies)
    search = Imdb::Movie.new(movies[2].id)
    @posters << search.poster
  end

  def poster_3!(movies)
    search = Imdb::Movie.new(movies[3].id)
    @posters << search.poster
  end

  def poster_4!(movies)
    search = Imdb::Movie.new(movies[4].id)
    @posters << search.poster
  end

  def poster_5!(movies)
    search = Imdb::Movie.new(movies[5].id)
    @posters << search.poster
  end

  def poster_6!(movies)
    search = Imdb::Movie.new(movies[6].id)
    @posters << search.poster
  end

  def poster_7!(movies)
    search = Imdb::Movie.new(movies[7].id)
    @posters << search.poster
  end

  def poster_8!(movies)
    search = Imdb::Movie.new(movies[8].id)
    @posters << search.poster
  end
end
