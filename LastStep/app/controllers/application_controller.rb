class ApplicationController < Sinatra::Base

  class Dataes

    def initialize(key, value)
      @key = key
      @value =value
    end

    def to_json
      {key: @key, value: @value}.to_json
    end

  end

  key1=Dataes.new(1,2).to_json
  key2=Dataes.new(2,3).to_json

  datas = []

  get '/' do
    "hello world"
  end


  post'/data'do
    content_type :json
    body=JSON.parse request.body.read
    datas.push(Dataes.new(body['key'],body['value']).to_json)
    datas.to_json

  end

  get '/data' do
    content_type :json
    datas.to_json
  end



end
