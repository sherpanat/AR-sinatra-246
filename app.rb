require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurant/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

get "/new" do
  @restaurant = Restaurant.new
  erb :new
end

post "/restaurant" do
  Restaurant.new(params).save!
  redirect '/'
end