require 'sinatra'
require 'crashmat_palindrome'

get '/' do
    @title = 'Home'
    @timenow = Time.now
  erb :index
end

get '/about' do
    @title = 'About'
    erb :about
end

get '/palindrome' do
    @title = 'Palindrome Detector'
    erb :palindrome
end

post '/check' do
    @phrase = params[:phrase]
    erb :result
end
  
  
