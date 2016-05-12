require "sinatra"
# require "sinatra/reloader" if development?
require_relative "lib/movie_list.rb"
require_relative "lib/poster_list.rb"
require "imdb"
require "pry"

movie_list = MovieList.new
poster_list = PosterList.new

get "/search" do
  erb :search_index
end

get "/game" do
  @poster_list = poster_list
  erb :game_index
end

post "/create_search" do
  title = params.fetch("title", 0)
  list_size = params.fetch("list_size", 0).to_i
  search = Imdb::Search.new(title)
  movie_list.list_imdb!(search.movies, list_size)
  poster_list.poster_imdb!(movie_list.movies)
  redirect to("/game")
end
