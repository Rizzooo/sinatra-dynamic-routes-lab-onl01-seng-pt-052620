require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse!
    "#{@name}"
  end
  
  get '/square/:number' do 
    @squared = params[:number].to_i * params[:number].to_i
    
    "#{@squared}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    
    @num.times do 
      "#{@phrase}"
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5'
    
  end
end