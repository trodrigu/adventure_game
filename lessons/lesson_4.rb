class LevelFour < Scene
  def intro
    GamePrinter.print_out %w[
     "Welcome to Level Four"
    ]
  end
  def enter
    intro
  end
end

Engine.register_it LevelFour.new
