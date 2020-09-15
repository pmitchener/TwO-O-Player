require './util'
class TrackPlayer
  include Util
  def initialize(player1, player2)
    
    @players = [player1, player2]
    @current_player = nil
    @player_index = 0;

  end

  def next_player()
    set_current_player
    num1 = Util.get_random_number 
    num2 = Util.get_random_number      
    puts "#{@current_player.name}:  #{Util.ask_math_question(num1, num2)}"
    ans = gets.chomp.to_i
    if !evaluateAnswer(ans) {num1 + num2} then
      puts "#{@current_player.name}: #{Util.get_incorrect_response}"
      lose_life
    else
      puts "#{@current_player.name}: #{Util.get_correct_response}"
    end
  end

  def show_winner
    player = get_winner
    puts ""
    puts "#{player.name} wins with a score of #{player.lives}/#{Util::NUMBER_OF_LIVES}"
  end

  private 

  def set_current_player()

    @current_player = @players[@player_index]
    @player_index = @player_index + 1
    if @player_index === @players.length then
      @player_index = 0;
    end

  end

  def get_winner() 
    
    if @players[0].lives > 0 then
      @players[0]
    else
      @players[1]
    end

  end

  def evaluateAnswer(ans)
    playerAns = yield
    ans === playerAns
  end

  def update_score()
    @current_player.update_Score()
  end

  def lose_life()
    @current_player.lose_Life
  end   
end