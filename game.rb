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
    @@MAP.fetch(scene)
  end

  def exit_scene
  end

  def start_of_map
    @@MAP.fetch(@start_scene)
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
    @map.enter_scene
  end
end

new_map = Map.new('Level One')
game = Engine.new(new_map)
game.play
