class GamePrinter
  def self.print_out words
    puts words.join(' ')
  end
end

class Scene
  def enter
  end
end

class Lose < Scene
  def enter
  end
end

class LevelOne < Scene

  def intro
    GamePrinter.print_out %w[
    "Welcome to Level One"
    "Each level will test you on increasingly harder concepts of Ruby."
    "What is the method that rhymes with fit used to separate a string?"
    ]
  end

  def enter
    intro
    response = gets.chomp.downcase
    if response == "split"
      puts "Outstanding!"
    else
      puts "Not quite."
    end
  end
end

class LevelTwo < Scene
  def enter
    puts "Welcome to Level Two"
    puts "This level will require you to write a bit of Ruby code"
  end
end

class LevelThree < Scene
  def enter
  end
end

class LevelFour < Scene
  def enter
  end
end

class Map
  def initialize(scene)
    @scene = scene
  end

  attr_accessor :scene

  def enter_scene scene
    current_scene = Map.map.fetch(scene)
    current_scene.enter
  end

  def exit_scene
    @scene += 1
  end

 def start_of_map
    current_scene = Map.map.fetch(@scene)
    current_scene.enter
  end

  def self.map
    {
      1 => LevelOne.new,
      2 => LevelTwo.new,
      3 => Lose.new
    }
  end

  def get_next_scene 
    next_scene = exit_scene 
    enter_scene next_scene
  end
end

class Engine
  def initialize(map)
    @map = map 
  end

  attr_accessor :map

  def play
    @map.start_of_map
    @map.get_next_scene
  end

end
