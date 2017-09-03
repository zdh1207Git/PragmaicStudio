require_relative "game"
  player1=Player.new("moe")
  player2=Player.new("larry",60)
  player3=Player.new("curly",125)
  knuckleheads=Game.new("knuckleheads")
  knuckleheads.add_player(player1)
  knuckleheads.add_player(player2)
  knuckleheads.add_player(player3)
  knuckleheads.play(3)
  knuckleheads.print_stats

# player1=Player.new("moe")
# player2=Player.new("larry",60)
# player3=Player.new("curly",125)
#
# knuckleheads=Game.new("knuckleheads")
# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)

#knuckleheads.play
# player1=Player.new("moe")
# player2=Player.new("larry",60)
# player3=Player.new("curly",125)
#
# players=[player1,player2,player3]
#
# puts "There are #{players.size} players in the game:"
#
# players.each do |player|
#   puts player
#   puts player.health
# end
# players.each do |player|
#   player.blamm
#   player.w00t
#   player.w00t
#   puts player
# end
# players.pop
# player4=Player.new("shemp",90)
# players.push(player4).each do |player|
#   puts player.name
# end
