require "irb"



class Zombie
  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3


  def initialize(zombie_speed, zombie_strength )
    # @@default_speed = if zombie_speed > @@max_speed
    #   @@default_speed
    # else
    #   zombie_speed
    # end
  @zombie_speed = zombie_speed > @@max_speed ? @@default_speed : zombie_speed  #zombie speed equals z
  @zombie_strength = @@default_strength if zombie_strength <= @@max_strength
  end

  def encounter
    if outrun_zombie?
     puts "That was close, I can't believe I outran those walkers"
   elsif survive_attack?
     puts "PLAAAAAAGUUEEEEE, I will be a Walker before sundown"
   else
     puts "The Walking Dead"
   end
 end

  def outrun_zombie?
    rand(0..@@max_speed) > @zombie_speed
  end

  def survive_attack?
    rand(0..@@max_strength) > @zombie_strength
  end

  def self.all
    @@horde
  end

  def self.new_day
    some_die_off
    spawn
    increase_plague_level
  end

  def self.some_die_off
    dead_zombies = rand(0..10)
    @@horde.pop(dead_zombies)
  end

  def self.spawn
    #puts "starting spawn method"
    number_of_zombies = rand(1..@@plague_level)
    number_of_zombies.times do
      zombie = Zombie.new(rand(1..@@max_speed), rand(1..@@max_strength))
      @@horde << zombie

    end
    #puts @@horde
  end

  def self.increase_plague_level
    plague_num = rand(0..2)
    @@plague_level += plague_num
  end




end

zombie = Zombie.new(2,3)
binding.irb
