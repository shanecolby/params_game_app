class Api::GamePageController < ApplicationController
  def query
    @name = params["name"].upcase
    if @name[0] == "A"
      @message=  "Hey, your name starts with the first letter of the alphabet"
    elsif @name[0] == "S"
      @message= "You have an awesome name!"
    end
    
    @guess_number = params["guess_number"]
    if @guess_number.to_i > 8
      @message= "too high!"
    elsif @guess_number.to_i < 8
      @message= "too low!"
    else
      @message = "You're right!"
    end

    render "query.json.jb"
  end
end
