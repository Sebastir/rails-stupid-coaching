class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    top_message = 'I am going to work'
    silly_question = 'Silly question, get dressed and go to work!.'
    standard_answer = 'I dont care, get dressed and go to work!'

    if @question == top_message
      @message =  'Great'
    elsif @question.include? "?"
      @message =  silly_question
    else
      @message =  standard_answer
     end
  end
end
