class LevelTwo < Scene

  def intro
    %w[
     Welcome to Level Two.
     You continue on your way and you definitely feel confident with yourself.
     After awhile your surroundings don't seem to familar.  
     Woops you are now are a bit lost.
     You sit on a fallen tree and attempt to ponder how to get out of this situation.
     It is in this instant that you notice a piece of paper called README.  
     You would love to read it and it just may have the answer to getting out of this predicament and back on the correct path.  
     Only one issue.
     It is bound shut by a lock which seems to be a missing word in some code.  
    ]
  end

  def choices
    %w[
     Your choices are grunt, scope, and detect.
    ]
  end

  def code
    %w[
     (1..100).FILL_IN { |i| i % 5 == 0 and i % 7 == 0 }
     => 35
    ]
  end

  def enter
    [intro, choices, code].each { |x| GamePrinter.print_out x }
    response = gets.chomp.downcase
    case response
    when "detect"
      puts
      puts "Excelsiur! The README pops open."
      puts
    when "scope"
      puts
      puts "You are running into Rails now.  It won't be of use here."
      puts
      Map.set_lose_token = true
    when "grunt"
      puts
      puts "I like your style.  This well be great as a build tool.....Not to solve this problem."
      puts
      Map.set_lose_token = true
    else
      puts
      puts "I don't quite understand"
      puts
      Map.set_lose_token = true
    end
  end
end

Engine.register_it LevelTwo.new
