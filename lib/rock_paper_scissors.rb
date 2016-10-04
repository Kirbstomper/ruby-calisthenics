class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    
    raise NoSuchStrategyError unless (player1[1]=~/[RPS]/)&&(player2[1]=~/[RPS]/)
    #if (!(player1[1]=~/[RPS]/)||(player2[1]=~/[RPS]/))
     # raise RockPaperScissors::NoSuchStrategyError
    #end
      
  
    outcome= (player1[1]+player2[1])
    
    case outcome
    #case statements for every possible valid combination
    when "RS"
      return player1
    
    when "RP"
      return player2
    
    when "PS"
      return player2
    
    when "PR"
      return player1
    
    when "RR"
      return player1
    
    when "PP"
      return player1
    
    when "SS"
      return player1
    
    when "SR"
      return player2
    
    when "SP"
      return player1
    
    end
  end
  
  #Recursive fun
  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    if (!tournament[0][1].kind_of?(Array)) #When we get to a player
      return winner(tournament[0],tournament[1])  #Returns that player
    end
    return(winner(tournament_winner(tournament[0]),tournament_winner(tournament[1])))#goes down both bracket paths, eventually returning the winners of both to fight each other
  end



end


