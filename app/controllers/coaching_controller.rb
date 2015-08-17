class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    # @coach_answer = coach_answer_enhanced(your_message)
    @answer = coach_answer_enhanced(@question)
  end

  def ask

  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message

    # Possible answers of the coach if student don't say what he expects
    answer_basic = "I don't care, get dressed and go to work!"
    answer_when_question = "Silly question, get dressed and go to work!"

    # Analyse what the student say to decide what the coach answer
    if your_message.include?("?")
      return answer_when_question
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return answer_basic
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    # Possible answers of the coach if student don't say what he expects
    # Analyse what the student say to decide what the coach answer
    if your_message == your_message.upcase
      if your_message == "I AM GOING TO WORK RIGHT NOW!"
        return coach_answer(your_message.capitalize)
      else
        return "I can feel your motivation! #{coach_answer(your_message)}"
      end
    else
      return coach_answer(your_message)
    end
  end

end
