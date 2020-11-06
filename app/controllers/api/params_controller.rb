class Api::ParamsController < ApplicationController
  def letter_a
    @name =  params[:name].upcase
    if @name[0] == 'A'
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "That's a name!"
    end

    # i = 0
    # while i < params[:name].length
    #   if params[:name][i].downcase == 'a'
    #     @a_name = "Hey, your name starts with the first letter of the alphabet!"
    #   end
    #   i += 1
    # end

    render "name_game.json.jb"
  end

  def guess_a_number
    @guess = params[:guess].to_i
    correct_answer = 30
    
    if @guess < correct_answer
      @message = "Too low"
    elsif @guess > correct_answer
      @message = "Too high"
    elsif @guess == correct_answer
      @message = "You got it!!"
    end
    render "name_game.json.jb"
    

  end
end
