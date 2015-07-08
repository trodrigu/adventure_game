class LevelTwo < Scene

  def intro
    GamePrinter.print_out %w[
     "Welcome to Level Two"
     "This level will require you to write a bit of Ruby code"
    ]
  end

  def enter
    intro
  end
end

Engine.register_it LevelTwo.new
