class LevelThree < Scene
  def intro
    %w[
     Welcome to Level Three.
     The README you busted open does have an answer.
     The problem now is that it is presenting us an array of mismatched and mangled words.
     Run it in Ruby irb to determine the answer! 
    ]
  end

  def choices
    %w[
      At the bottom of the README it gives us choices for directions.
      They are right, left, and straight.
    ]
  end

  def code
    %w[
      ['ekatt', 'at', 'tfelt', 'tat', 'ehtt', 'gnikomsr', 'hsube'].map { |x| x.chop.reverse }
    ]
  end

  def enter
    [intro, choices, code].each { |x| GamePrinter.print_out x }
    response = gets.chomp.downcase
    case response
    when "right"
      puts
      puts "Unfortunately, this is not the RIGHT answer."
      puts
    when "left"
      puts
      puts "WOOOOO by chopping and reversing you are able to determine the right direction!"
      puts
    when "straight"
      puts
      puts "Thats going to be a bad idea because there is nothing ahead for 100's of miles"
      puts
      Map.set_lose_token = true
    else
      puts
      puts "I don't quite understand"
      Map.set_lose_token = true
    end
  end
end

Engine.register_it LevelThree.new
