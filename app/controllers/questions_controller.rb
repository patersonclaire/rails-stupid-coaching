class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']
    @query = params[:question]
    if @query.include?('?')
      @answer = @answer[1]
    elsif @query == 'I am going to work'
      @answer = @answer[0]
    else
      @answer = @answer[2]
    end
  end
end

# def answer
#   @query = params[:question]
#   return @answer if @query == 'what time is it?'
# end
