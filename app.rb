require 'rubygems'
require 'sinatra'
require 'haml'

configure do
  set :public_folder,
    Proc.new { File.join(root, "static") }
  enable :sessions
end

get '/' do
  haml :index
end


