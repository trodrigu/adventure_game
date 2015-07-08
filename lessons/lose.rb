class Lose < Scene
  def enter
    abort("Outta here")
  end
end

Engine.register_it Lose.new
