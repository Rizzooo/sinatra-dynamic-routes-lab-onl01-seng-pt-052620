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
    @outcome = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    
    @num.times do 
      @outcome +
    end
  end
  
  
end