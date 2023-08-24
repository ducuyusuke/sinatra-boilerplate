require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  erb :landing_page
end

get '/index' do
  @restaurants = Restaurant.all
  erb :index
end

get '/:id' do
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  erb :restaurant
end
