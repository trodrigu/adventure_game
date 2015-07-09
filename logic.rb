require 'pry'
require 'paint'

class Scene
  def enter
  end
end

class Map
  def initialize(scene)
    @scene = scene
  end

  attr_accessor :scene


  def enter_scene scene
    current_scene = Engine::LESSONS.fetch(scene)
    current_scene.enter
  end

  def exit_scene
    @scene += 1
  end

  

  def start_of_map
    current_scene = Engine::LESSONS.fetch(@scene)
    current_scene.enter
  end

  @@LOSE_TOKEN = false

  def lose?
    @@LOSE_TOKEN == true
  end

  def self.set_lose_token=(new_status)
    @@LOSE_TOKEN = new_status
  end

  def get_next_scene 
    if lose?
      current_scene = Engine::LESSONS.fetch(4)
      current_scene.enter
    else
      next_scene = exit_scene 
      enter_scene next_scene
    end
  end

end

class Engine
  def initialize(map)
    @map = map 
  end

  attr_accessor :map

  @i= 0
  LESSONS = Hash.new
  def self.level_increment
    @i += 1
  end

  def self.register_it level
    l = level_to_key level
    i = num_word_to_string l
    LESSONS[i] = level
    level_increment
  end

  def self.level_to_key level
    l = /(One|Two|Three|Four|Lose)/.match(level.inspect)
    l[0]
  end

  def self.num_word_to_string w
    ['One', 'Two', 'Three', 'Four', 'Lose'].rindex { |x| x == "#{w}" }
  end

  def play
    if @map.scene < 1
      @map.start_of_map
      @map.get_next_scene 
    else
      @map.get_next_scene
    end
  end

end

lessons = File.join("lessons", "*.rb")
Dir[File.expand_path(lessons)].each do |file|
  require file
end

class GamePrinter
  def self.print_out words
    words.join(' ')
  end
end


