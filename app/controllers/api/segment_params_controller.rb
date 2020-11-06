class Api::SegmentParamsController < ApplicationController
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
    render 'guess.json.jb'
  end
end
