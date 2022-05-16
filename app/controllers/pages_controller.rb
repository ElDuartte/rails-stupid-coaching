class PagesController < ApplicationController
  def ask; end

  def answer
    result = params[:user_input]

    @user_input = if result.include?('?')
                    'Silly question, get dressed and go to work!'
                  elsif result == 'I am going to work'
                    'Great!'
                  else
                    "I don't care, get dressed and go to work!"
                  end
  end
end
