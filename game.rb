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
    puts "What is the method used to separate a string?"
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
  end

  def start_of_map
    current_scene = @@MAP.fetch(@start_scene)
    current_scene.enter
  end

  @@MAP = {
    'Level One' => LevelOne.new,
    'Lose' => Lose.new
  }
end

class Engine
  def initialize(map)
    @map = map 
  end

  def play
    @map.start_of_map
  end

  def get_next_scene scene
    @map.exit_scene
    @map.enter_scene
  end
end

new_map = Map.new('Level One')
game = Engine.new(new_map)
game.play