class LevelOne < Scene

  def intro
    %w[
      Welcome to Level One.
      Each level will test you on increasingly harder concepts of Ruby.
      Your fantastic journey begins with you walking through the woods.
      You are really enjoying the day and it seems as though everything is going awesome!
      As you get deeper into the woods you notice something interesting.
      You have been studying programming very hard for the last couple of weeks and everything seems to be flashing into code...weird
      Trees are flashing into what are called a 'Strings'
      There is a tree that seems to be teetering on the brink of tipping.
      You stop in your tracks.....CRACKKKKKK
      The tree topples over and now blocks your way.
      You happened to have brought a hatchet with you and you know you can use it somehow.
    ]
  end

  def choices
    %w[
      The choices you can think of are hack, kick, smash and split.
    ]
  end

  def code
    %w[
      Utilizing your ruby toolbox which of the above should you use to take care of the 'String'?
    ]
  end

  def enter
    [intro, choices, code].each { |x| GamePrinter.print_out x }
    response = gets.chomp.downcase
    case response
    when "split"
      puts
      puts "Outstanding! The tree breaks apart and you move through."
      puts
    when "kick"
      puts
      puts "You blow your foot out and you scream in agony because the tree is stone hard."
      puts
      Map.set_lose_token = true
    when "smash"
      puts
      puts "You attempt to karate chop the tree with disasterous results."
      puts
      Map.set_lose_token = true
    when "hack"
      puts
      puts "You forget to test your code and it breaks due to vulnerabilites."
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

Engine.register_it LevelOne.new
