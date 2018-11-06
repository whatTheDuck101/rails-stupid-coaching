class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ""
    @question = params[:question]
    if @question.include? "?"
      return @answer << "Silly question, get dressed and go to work!"

    elsif @question == "I am going to work!"
      return @answer << "Great!"

    elsif @question.blank?
      return @answer << "You didn't write anything! Go to work!"
    else
      return @answer << "I don't care, get dressed and go to work!"
    end
  end
end
