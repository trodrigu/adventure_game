class Scene
  def enter
  end
end

class Lose < Scene
  def enter
  end
end

class LevelOne < Scene
  def enter
    puts "Welcome to Level One"
    puts "Each level will test you on increasingly harder concepts of Ruby."
    puts "What is the method that rhymes with fit used to separate a string?"
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
  def initialize(start_scene)
    @start_scene = start_scene
  end

  def enter_scene scene
 
    current_scene = @@MAP.fetch(scene)
    current_scene.enter
  end

  def exit_scene
    @start_scene += 1
  end

 def start_of_map
    current_scene = @@MAP.fetch(@start_scene)
    current_scene.enter
  end

  @@MAP = {
    1 => LevelOne.new,
    2 => LevelTwo.new,
    3 => Lose.new
  }
end

class Engine
  def initialize(map)
    @map = map 
  end

  def play
    @map.start_of_map
    get_next_scene
  end

  def get_next_scene 
    next_scene = @map.exit_scene 
    @map.enter_scene next_scene
  end
end
