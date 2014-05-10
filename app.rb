require 'sinatra'
require 'pig_latin'
require 'pry-debugger'


set :bind, '0.0.0.0'

get '/translate' do
  erb :translate
end

post '/translate' do
  puts params
  @word = PigLatin.check(params[:word])
  erb :result
end

# get '/post/:id'
#   # This route will use post.erb as the layout file
#   erb :show, layout: :post
# end
