module Util
  NUMBER_OF_LIVES = 3
  def self.get_random_number()
    rand(1..20)
  end

  def self.ask_math_question(num1, num2)
    "What does #{num1} plus #{num2} equal?"
  end 

  def self.get_incorrect_response()
    responses = ["Should I lend you a calculator?", "Maybe take a nap and try again", "Maybe the next one will be easier"]
    responses[rand(0..responses.length - 1)]
  end

  def self.get_correct_response()
    responses = ["Those smart pills are working.", "You da wiz kid here.", " You are correct."]
    responses[rand(0..responses.length - 1)]
  end

end