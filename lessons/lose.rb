class Lose < Scene
  def intro
    GamePrinter.print_out %w[
        "You lost man"
      ]
    end
  def enter
    intro
  end
end

Engine.register_it Lose.new
