class LevelThree < Scene
  def intro
    GamePrinter.print_out %w[
     "Welcome to Level Three"
     "Here you will have to think a bit out of the box."
    ]
  end
  def enter
    intro
  end
end

Engine.register_it LevelThree.new
