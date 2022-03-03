class Mastermind

  @@colors = %w[blue yellow green red pink purple orange]

  def initialize
    @colors_selected = @@colors.sample(4)
    @player_choices = []
    player_choose
  end

  private
  def player_choose
    i = 1
    hits = 0

    while i < 13 && hits < 4
      puts "Options: blue, yellow, green, red, pink, purple, orange"
      print "Choose color (#{i}): "

      choice = gets.chomp.downcase

      if @colors_selected.include?(choice)
        @player_choices << choice
        hits += 1
        puts "OK. Number of correct guesses: #{hits}"
      else
        puts "TRY AGAIN"
      end
      i += 1
    end
    puts "GAME FINISHED. #{hits} hits in #{i} attempts"
  end

end

Mastermind.new
