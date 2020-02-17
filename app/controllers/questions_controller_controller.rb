class QuestionsControllerController < ApplicationController
  def ask
  end

  def answer
    analize_user_text(params[:text])
    @text = params[:text]
    @answer
  end

  def analize_user_text(text)
    if text.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif text == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
