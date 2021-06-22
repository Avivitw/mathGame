require './player'
require './question'


class Game
  def initialize()
    # @player_name
  end

  def start
    puts "Welcome to the math Game!"
    # ask user1 name, user2 name
    puts "Player1 -  please type your name"
    @player1_name = gets.chomp
     puts "Player2 -  please type your name"
    @player2_name = gets.chomp
    # init players classes
      player1 = Player.new(@player1_name)
      player2 = Player.new(@player2_name)

    #loop: 
      #create question
      #print question and get answer from user
      #check user answer
      #feedback to user
      # update lives if needed
      # check if the game over
      # switch users for next round

  end

end