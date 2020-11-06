class Api::ParamsController < ApplicationController
  def letter_a
    i = 0
    while i < params["name"].length
      if params["name"][i].downcase == 'a'
        @a_name = "Hey, your name starts with the first letter of the alphabet!"
      end
      i += 1
    end
    @params = params["name"]
    render "name_game.json.jb"
  end

  def guess_a_number
    @number = params["number"]
    @my_num = 30
    if params["number"].to_i < @my_num
      @guess = "Too low"
    elsif params["number"].to_i > @my_num
      @guess = "Too high"
    elsif params["number"].to_i == @my_num
      @guess = "You got it!!"
    end
    render "name_game.json.jb"
    

  end
end
