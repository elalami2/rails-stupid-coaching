# require 'active_support'
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    @answer = params[:question]
    if @answer == 'I am going to work'
      @answer = 'Great!'
    else
    # if '?'.in?(@answer) then
    if @answer[@answer.size - 1] == '?'
      @answer = 'Silly question, get dressed and go to work!.'
     else
      @answer = 'I don''t care, get dressed and go to work!'
     end
   end
 end
end
