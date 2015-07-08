class LevelTwo < Scene

  def intro
    GamePrinter.print_out %w[
     Welcome to Level Two
     This level will require you to write a bit of Ruby code
    ]
  end

  def enter
    intro
  end
  def grab_user_file
  end
  def compare_to_soln
  end
end

Engine.register_it LevelTwo.new
