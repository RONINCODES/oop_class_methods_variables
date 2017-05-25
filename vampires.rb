class Vampire

def initialize(name, age)
  @name = name
  @age = age

  @in_coffin? = false
  @drank_blood_today? = false
  @coven =[]

  def self.create
    new_vampire = Vampire.new(name, age)
    @coven << new_vampire
  end

  def drank_blood_today
    @drank_blood_today == true
  end

  def self.sunrise
    if self.drank_blood_today == false || self.@in_coffin == true
      self.@coven.delete
    end
  end

  def self.sunset
    @drank_blood_today = false
    @in_coffin = false
  end
   



  def go_home
    @in_coffin == true
  end


end
