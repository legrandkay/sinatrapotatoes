require 'sinatra'
require 'sinatra/activerecord'
require './movie.rb'

#set :database, "sqlite://#{ENV['RACK_ENV']}.db

get '/movies' do
  @movies = Movie.all
  erb :index
end
