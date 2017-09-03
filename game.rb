require_relative "game_turn"
require_relative "treasure_trove"
class Game
  attr_reader :title
  def initialize(title)
    @title=title
    @players=[]
  end
  def add_player(a_player)
    @players << a_player
  end

  def play(rounds)
    puts "There are #{@players.size} players in #{@title}:"
    @players.each do |player|
      puts player
    end
    treasures=TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} treasures to be found:\n"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points}"
    end
    1.upto(rounds) do |round|
      puts"\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end
  def print_stats
    strong_players,wimpy_players = @players.partition { |player| player.strong?}
    puts "\n#{@title} Statistics:"
    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      puts "\n#{player.name}(#{player.health})"
    end
    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      puts "\n#{player.name}(#{player.health})"
    end
  end
end
if __FILE__==$0
  mygame=Game.new("Jordan")
  puts mygame.title
end
