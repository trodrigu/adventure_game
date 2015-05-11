class Engine
  def initialize(start_scene)
    @start_scene = start_scene
  end

  def play
    current_scene = @@MAP.fetch(@start_scene)
  end

  def get_next_scene
    # puts "You have made it to the next level!" unless Map.current_scene == "Central Corridor"
  end
end

class Scene
  def enter
  end
end

class Death < Scene
end

class CentralCorridor < Scene
  def enter
    puts "A Gothon charges towards you!"
    puts "Whatever shall you do??"
    response = gets.chomp
    if response == 'run'
      puts "You died"
    end
  end
end

class LaserWeaponArmory < Scene
end

class TheBridge < Scene
end

class EscapePod < Scene
end

class Map

  def enter_scene
  end

  def exit_scene
  end

  @@MAP = {
    'Central Corridor': CentralCorridor.new,
    'Death': Death.new
  }
end
new_map = Map.new
play_game = Engine.new('Central Corridor')

play_game.play
