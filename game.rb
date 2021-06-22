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
    current_player = player1
    while player1.lives > 0 and player2.lives > 0
      question = Question.new
      puts "----- NEW TURN -----"
      puts "#{current_player.name}: #{question.question}"
      user_answer = gets.chomp

      if user_answer == question.answer
        puts "#{current_player.name}: YES! Correct answer"       
      else
        puts "#{current_player.name}: NO - You are wrong"
        current_player.reduce_lives
      end

      puts "P1(#{player1.name}): #{player1.lives}/3 vs P2(#{player2.name}): #{player2.lives}/3"
      if current_player  == player1
        current_player = player2
      else
        current_player = player1
      end
      
    end
    
    puts "#{current_player.name} wins with a score of #{current_player.lives}/3 " 
    puts "----- GAME OVER -----"
    puts "Good bye !"
  end

end