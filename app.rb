require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    square = params[:number].to_i ** 2
    "#{square.to_s}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase].gsub(/%20/, ' ')
    binding.pry
    params[:number].to_i.times do
      "#{phrase}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end

  get '/:operation/:number1/:number2' do

  end

end
