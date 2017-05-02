ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'models/link'


class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/form'
  end

  post '/links' do
    name = params[:site_name]
    url = params[:site_url]
    @links = Link.create(url: url, title: name)
    redirect '/links'
  end

end
