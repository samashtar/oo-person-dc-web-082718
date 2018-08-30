# your code goes here
require 'pry'

class Person

  # attr_accessor :
  def initialize(name, bank_account = 25, happiness_points = 8, hygiene_points = 8)
    @name = name
    @bank_account = bank_account
    @happiness_points = happiness_points
    @hygiene_points = hygiene_points
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(account)
    @bank_account = account
  end

  def happiness
    @happiness_points
  end

  def happiness=(new_happiness_points)
    # binding.pry
    #/ if points > than 10 set the value to 10
    if new_happiness_points > 10
      @happiness_points = 10
    elsif new_happiness_points < 0
      @happiness_points = 0
    #/ if points < 0 set the value 0
    else
      @happiness_points = new_happiness_points
    end
  end

  def hygiene
    @hygiene_points
  end


  def hygiene=(new_hygiene_points)
    # binding.pry
    #/ if points > than 10 set the value to 10
    if new_hygiene_points > 10
      @hygiene_points = 10
    elsif new_hygiene_points < 0
      @hygiene_points = 0
    #/ if points < 0 set the value 0
    else
      @hygiene_points = new_hygiene_points
    end
  end

  def happy?
    if self.happiness >  7
      true
    else
      false
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene_points += 4
    self.hygiene=@hygiene_points
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end


def work_out
@happiness_points += 2
self.happiness= @happiness_points
@hygiene_points -= 3
self.hygiene= @hygiene_points
"♪ another one bites the dust ♫"
end



def call_friend (callee)

@happiness_points += 3
self.happiness= @happiness_points
callee.happiness += 3

 "Hi #{callee.name}! It's #{self.name}. How are you?"
end


def start_conversation (convee, topic)

if topic == "politics"
  @happiness_points -= 2
  self.happiness= @happiness_points
  convee.happiness= @happiness_points

  return "blah blah partisan blah lobbyist"
elsif topic == "weather"
  @happiness_points += 1
  self.happiness= @happiness_points
  convee.happiness= @happiness_points


  "blah blah sun blah rain"
else
  "blah blah blah blah blah"
end


end
  # End of
end
# your code goes here
