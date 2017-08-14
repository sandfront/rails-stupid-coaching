class QuestionsController < ApplicationController
  def answer
    @query = params[:query]
    @response = coach_answer_enhanced(@query)
  end

  def ask
  end

  private

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.downcase == "I am going to work right now!".downcase
    return ""
  elsif your_message.include? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message == your_message.upcase
    if your_message == "I am going to work right now!".upcase
      return ""
    else
      return "I can feel your motivation! #{coach_answer(your_message.downcase)}"
    end
  else
    coach_answer(your_message.downcase)
  end
end

end
