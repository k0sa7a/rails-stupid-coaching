class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    @coach_answer = if @answer.nil? || @answer.empty?
                      'You did not say anything. Are you ok? Go to work!'
                    elsif @answer.end_with?('?')
                      'Silly question, get dressed and go to work!'
                    elsif @answer == 'I am going to work'
                      'Great!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end

  # def answer
  #   @answer = params[:question]
  #   if @answer.end_with?('?')
  #     @coach_answer = 'Silly question, get dressed and go to work!'
  #   elsif @answer == 'I am going to work'
  #     @coach_answer = 'Great!'
  #   else
  #     @coach_answer = "I don't care, get dressed and go to work!"
  #   end
  # end
end
