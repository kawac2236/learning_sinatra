require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
	adapter: 'sqlite3',
	database: './bbs.db'
)

class Comment < ActiveRecord::Base
	validates :body, presence:true
end

## DBのコメントを表示
get '/' do
	@title = "My BBS"
	@comments = Comment.all
	erb :index
end

## コメントを追加
post '/create' do
	Comment.create(body: params[:body])	
	redirect to('/')
end

## コメント削除
post '/destroy' do
	Comment.find(params[:id]).destroy
end
