class ApplicationController < Sinatra::Base
  require 'sinatra'
  require './model.rb'
  # get '/' do
  #   'Hello world!'
  # end

  key1=Data.new("1", 2)

  key2=Data.new("2",3)

  datas = [key1,key2]

  get '/' do
    "hello matvey"
  end


  post'/'do

  end

  get '/dat' do
    content_type :json
    datas.to_json
  end

  # post '/set/:key/:value'do
  #   array.push
  #   "set"
  # end

  a=" "
  post '/set' do
    # content_type :json
    { :key => params[:key]}.to_s
    a = :key

  end
  post '/sett' do
     content_type :json
     return request.as.to_json
  end


  get '/get' do
    # соответствует "GET /hello/foo" и "GET /hello/bar",
    # где params['name'] - это 'foo' или 'bar'
    a
  end




end
