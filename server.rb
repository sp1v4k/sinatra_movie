require "sinatra"
# require "sinatra/reloader" if development?
require_relative "lib/movie_list.rb"
require_relative "lib/poster_list.rb"
require "imdb"
require "pry"

poster_list = PosterList.new
movie_list = MovieList.new

get "/search" do
  poster_list = PosterList.new
  movie_list = MovieList.new
  erb :search_index
end

get "/game" do
  @poster_list = poster_list
  erb :game_index
end

post "/create_search" do
  title = params.fetch("title", 0)
  search = Imdb::Search.new(title)
  movie_list.list_imdb!(search.movies)
  t0 = Thread.new { poster_list.poster_0!(movie_list.movies) }
  t1 = Thread.new { poster_list.poster_1!(movie_list.movies) }
  t2 = Thread.new { poster_list.poster_2!(movie_list.movies) }
  t3 = Thread.new { poster_list.poster_3!(movie_list.movies) }
  t4 = Thread.new { poster_list.poster_4!(movie_list.movies) }
  t5 = Thread.new { poster_list.poster_5!(movie_list.movies) }
  t6 = Thread.new { poster_list.poster_6!(movie_list.movies) }
  t7 = Thread.new { poster_list.poster_7!(movie_list.movies) }
  t8 = Thread.new { poster_list.poster_8!(movie_list.movies) }
  t0.join
  t1.join
  t2.join
  t3.join
  t4.join
  t5.join
  t6.join
  t7.join
  t8.join
  redirect to("/game")
end
