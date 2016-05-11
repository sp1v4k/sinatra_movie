require "sinatra"
require "sinatra/reloader" if development?
require_relative "lib/movie_list.rb"
require "imdb"
require "pry"

movie_list = MovieList.new

get "/search" do
  erb :search_index
end

get "/game" do
  @movie_list = movie_list
  erb :game_index
end

post "/create_search" do
  title = params.fetch("title", 0)
  list_size = params.fetch("list_size", 0)
  search = Imdb::Search.new(title)
  movie_list.list_imdb!(search.movies, list_size)
  redirect to("/game")
end
