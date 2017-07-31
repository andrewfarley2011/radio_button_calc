
require "sinatra"
require_relative "sum.rb"

get '/' do 
	erb :index
end 

post '/index' do
	radio = params[:radio]
	redirect '/two_numbers?radio=' + radio
end

get '/two_numbers' do
	radio = params[:radio]
	erb :two_numbers, :locals => {radio:radio}
end

 post '/two_numbers' do 
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	radio = params[:radio]
	totalnumbers = calc(radio, num_1.to_i, num_2.to_i)
redirect '/total?radio=' + radio + '&num_1=' + num_1 + '&num_2=' + num_2 + '&totalnumbers=' + totalnumbers
end 

get '/total' do 
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	radio = params[:radio]
	totalnumbers = params[:totalnumbers]
	erb :total, :locals => {radio:radio, num_1:num_1, num_2:num_2, totalnumbers:totalnumbers }
end 