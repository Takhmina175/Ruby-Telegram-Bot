# lib/Description of Quotes class
class Quotes
  attr_reader :quotes

  def initialize
    @quotes = ['Fix the cause, not the symptom.” – Steve Maguire',

               "I' m not a great programmer; I'm just a good programmer with great habits.― Kent Beck",

               'First, solve the problem. Then, write the code.” – John Johnson',

               'Optimism is an occupational hazard of programming: feedback is the treatment.  Kent Beck',

               'Knowledge is power. – Francis Bacon',

               'Code is like humor. When you have to explain it, it is bad. – Cory House',

               'Simplicity is the soul of efficiency. – Austin Freeman',

               'Optimism is an occupational hazard of programming: feedback is the treatment. Kent Beck',

               'In order to be irreplaceable, one must always be different – Coco Chanel']
  end

  def random_quotes
    @quotes.sample
  end
end
