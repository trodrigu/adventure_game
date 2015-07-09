class Lose < Scene
  def enter
    abort("You have lost.  Please try again. :)")
  end
end

Engine.register_it Lose.new
