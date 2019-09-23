require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
	adapter: 'sqlite3',
	database: './bbs.db'
)

class Comment < ActiveRecord::Base
end

## htmlを表示
get '/' do
	@title = "My BBS"
	@comments = Comment.all
	erb :index
end
