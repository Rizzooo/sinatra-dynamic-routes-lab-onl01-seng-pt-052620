require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name'
    name = params[:name]
    @flip = name.reverse
    
    "#{@flip}"
  end

end