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
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end
  
  get '/:operation/:number1/:number2'
    op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    @answer = @num1 op @num2
    "#{@answer}"
  end
end