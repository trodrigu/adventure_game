require './logic'

class Game

  def self.run
    new_map = Map.new(0)
    engine = Engine.new(new_map)
    loop do
      new_map.scene < Engine::LESSONS.length - 1 ? engine.play : abort("Thats all folks")
    end
  end
end

Game.run
