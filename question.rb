class Question
  attr_reader :question, :answer

  def initialize
    @question_answer = self.generate_question_and_answer
  end

  def generate_question_and_answer
    num1 = rand(1..20)
    num2 = rand(1..20)

    @question =  "What does #{num1} plus #{num2} equal?"

    @answer =   "#{num1 + num2}"
    
  end

  def answer? user_answer
     user_answer == answer
  end

end