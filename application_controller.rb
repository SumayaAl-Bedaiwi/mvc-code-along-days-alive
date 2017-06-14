require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
#link to about page
  get '/about' do
    erb :about
  end
  
#post route
  post '/calculate_days' do
    user_bday=params[:birthday]
    @user_days=years_alive(user_bday)
    
    
    @user_hours=years_alive(user_bday)*24 
    
    @user_min=years_alive(user_bday)*24*60
    
    @user_sec=years_alive(user_bday)*24*60*60
    
    @user_months=years_alive(user_bday)/30
    
    translation=params[:pig_latin_string]
    @translation=to_pig_latin(translation)
    
    klossified=params[:klossify_string]
    @klossified=klossify(klossified)
    
    user_search=params[:search]
    @gif=get_gif(user_search)
    
    erb :results
  end
  



end