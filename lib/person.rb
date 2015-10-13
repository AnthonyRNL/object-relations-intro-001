#code along here!

class Person
  attr_accessor :name, :happiness
  attr_reader :partner
  def initialize(name)
    @name = name
    @happiness = 5
    @partner = ""
  end

  def go_on_a_date(person, level)
    if level == false
      self.happiness -= 1
      person.happiness -= 1
    else
      self.happiness += 1
      person.happiness += 1
    end
  end

  def partner=(name)
    @partner = name
  end

  def get_married(name)
    self.partner = name
    name.partner = self
  end
end

#############

#When your tests pertaining to the first code along are passing, un-comment out the below!

#beyonce = Person.new("Beyonce")
#jayz = Person.new("Jay-Z")
# beyonce.go_on_a_date(jayz, true)
# puts beyonce.happiness
# puts jayz.happiness

#When your tests pertaining to the second code along are passing, un-comment out the below!

#beyonce.get_married(jayz)
#puts "Beyonce's partner is #{beyonce.partner.name}"
#puts "Jay-Z's partner is #{jayz.partner.name}"
