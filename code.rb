module PartyGoer
  #YOUR CODE GOES HERE

  def initialize
    @drinks = 0
  end

  def drink
    @drinks += 1
    @drinks < 3 ? true : false
  end

  def sing
    ""
  end


  def cause_havoc
    raise PersonalizedHavocError
  end

  def invited?
    true
  end

  def self.included(base)
    base.extend(PartyGoer)
  end

end

class PersonalizedHavocError < StandardError
  def message
    "You should define this yourself!"
  end
end
