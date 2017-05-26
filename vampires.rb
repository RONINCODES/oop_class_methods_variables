class Vampire

  @@coven =[]

  attr_accessor :drank_blood_today, :in_coffin

  def self.create(name, age)
    new_vampire = Vampire.new(name, age)
    # add new vampires to list of vampires
    @@coven << new_vampire
    new_vampire
  end

  def initialize(name, age)
    #set instance variables in initialize method (name,age)
    @name = name
    @age = age
    # add instance variables in coffin, and drank blood today?
    @in_coffin = false
    @drank_blood_today = false
  end

  def self.sunrise
    #iterate over array of vampires
    @@coven.each do |current_vampire|
    #delete vampires that did not drink blood or are out of their coffins
      if current_vampire.drank_blood_today == false || current_vampire.in_coffin == false
        puts "delete this vampire"
      #vampire.@coven.delete
      @@coven.delete(current_vampire)
      end
    end
  end

  def self.sunset
    #iterate through coven
    @@coven.each do |current_vamp|
      #set each vampires' instance in coffin and drank_blood_today to false
      @drank_blood_today = false
      @in_coffin = false
    end
  end


  def drink_blood
    @drank_blood_today = true
  end




end
