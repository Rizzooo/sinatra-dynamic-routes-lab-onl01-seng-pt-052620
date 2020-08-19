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
  
  get '/say/:number/:phrase'
    
  end

end