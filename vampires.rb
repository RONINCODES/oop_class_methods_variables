class Vampire

  @@coven =[]

  def initialize(name, age)
    #set instance variables in initialize method (name,age)
    @name = name
    @age = age
    # add instance variables in coffin, and drank blood today?
    @in_coffin = false
    @drank_blood_today = false
  end

  def self.create(name, age)
    new_vampire = Vampire.new(name, age)
    # add new vampires to list of vampires
    @@coven << new_vampire
  end

end
