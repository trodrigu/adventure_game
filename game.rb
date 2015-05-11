class Engine
end

class Scene
  def initialize(params = {})
    @map = params 
  end

  def play_scene
  end

  def get_next_scene
    # puts "You have made it to the next level!" unless Map.current_scene == "Central Corridor"
  end

  def current_scene scene
    @map.fetch(scene)
  end

  def start_first_scene
    @scene = current_scene(1)
    @scene.gothon_fight
  end
end

class Death < Scene
end

class CentralCorridor < Scene
  def gothon_fight
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

end
# new_map = Map.new
# play_game = Engine.new(new_map)
# play_game.start_first_scene
