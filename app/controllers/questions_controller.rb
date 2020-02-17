class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.nil?
      @answer = 'You asked no question!'
    elsif @question.slice(-1, 1) == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
