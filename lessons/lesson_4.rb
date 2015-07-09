class LevelFour < Scene
  def intro
    %w[
     Welcome to Level Four.
     You are now getting the hang of it!
     Looking a bit ahead you see a smoking bush!
     In your zeal you begin sprinting towards the bush!
     It is coming into sight and you see a left hand path.
     Looking down this way you spot that it is leading toward a dark valley.
     The path also shows a decline in elevation and seems as though as this could be the wrong way.
     Nevertheless we are standing by our decision from the README.
     There is also a trail sign next to the path that tells up something.
     Of course it is written in code and we must `decode` this.
     Since you are now use to using the irb this will be an easy task.

    ]
  end

  def choices
    %w[
      You can see how object oriented Ruby really is and understand how everything (even operators) are objects.
      The choices you can think of are reduce, inject, and slap.
    ]
  end

  def code
    %w[
      It says..
      The length of your path is =
      [1, 2, 3, 4].FILL_IN(:+)
      Miles
    ]
  end

  def enter
    puts
    puts Paint[GamePrinter.print_out(intro), :white, :bright]
    puts
    puts Paint[GamePrinter.print_out(choices), :red, :bright]
    puts
    puts Paint[GamePrinter.print_out(code), :blue, :bright]
    puts
    response = gets.chomp.downcase
    case response
    when "reduce"
      puts
      puts "The success is real.  Congrats!!!!!!!  Just 10 more miles...TO BE CONTINUED"
      puts
    when "inject"
      puts
      puts "You have the right idea but we just need a block instead."
      puts
      Map.set_lost_token = true
    when "slap"
      puts
      puts "That may work on your brother but it doesn't help solve this problem."
      puts
      Map.set_lose_token = true
    else
      puts
      puts "I don't quite understand"
      Map.set_lose_token = true
    end
  end
end

Engine.register_it LevelFour.new
