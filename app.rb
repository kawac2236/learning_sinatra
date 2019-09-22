require 'sinatra'
require 'sinatra/reloader'

## htmlを表示
get '/' do
    @title = "My Site"
    erb :index
end

get '/about' do
    @title = "About This Site"
    erb :about
end

# get '/hello/:name' do
#     "hello #{params[:name]}"
# end

# get '/hello/:name' do |name|
#     "hello #{name}"
# end

# get '/hello/:fname/?:lname?' do |f,l|
#     "hello #{f} #{l}"
# end

# get '/hello/*/*' do
#     "hello #{params[:splat][0]} #{params[:splat][1]}"
# end

# get %r{/users/([0-9]*)} do
#     "user id = #{params[:captures][0]}"
# end
