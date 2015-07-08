class LevelOne < Scene

  def intro
    GamePrinter.print_out %w[
    Welcome to Level One
    Each level will test you on increasingly harder concepts of Ruby.
    What is the method that rhymes with fit used to separate a string?
    ]
  end

  def enter
    intro
    response = gets.chomp.downcase
    if response == "split"
      puts "Outstanding!"
    else
      puts "Not quite."
      Map.set_lose_token = true
    end
  end
end

Engine.register_it LevelOne.new
