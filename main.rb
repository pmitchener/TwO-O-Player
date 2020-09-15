require './Player'
require './trackplayer'
require './util'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

trackplayer = TrackPlayer.new(player1, player2)

trackplayer.next_player
while player1.lives > 0 && player2.lives > 0 do
  puts "P1: #{player1.lives}/#{Util::NUMBER_OF_LIVES} vs P2: #{player2.lives}/#{Util::NUMBER_OF_LIVES}"
  puts ""
  puts "----- NEW TURN-----"
  trackplayer.next_player
end

trackplayer.show_winner
puts ""
puts "----- GAME OVER -----"
puts ""
puts "Good bye!"