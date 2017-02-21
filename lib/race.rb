module RaceBet
  class Race

    class << self
      guesses = [:joe, :mary, :bob, :sheldon, :howard, :frank]
      winners = [:mary, :bob, :sheldon, :howard, :frank]
      
      def score(guesses, winners)
        #first 5 elements of both arrays
        winnerstemp = winners[0..4]
        guessestemp = guesses[0..4]

        #helping variables
        score = 1
        counter = 0
        i=1
        j=1

        #correct first second and third place
        if guesses[0]==winners[0] and guesses[1]==winners[1] and guesses[2]==winners[2]
         score*30        
        #correct first place
        elsif guesses[0]==winners[0]       
         score*15
        #correct 2nd place
        elsif guesses[1]==winners[1]
          score*10
        #correct 3rd place
        elsif guesses[2]==winners[2]
          score*5
        #correct 4th place
        elsif guesses[3]==winners[3]
          score*3
        #correct 5th place      
        elsif guesses[4]==winners[4]
          score 
        
 
        else
          #gives one point for a correct guess in the wrong place
          5.times do |i|
            5.times do |j|
              if guessestemp[i-1]==winnerstemp[j-1] and i!=j
                #Below is output for console testing
                #puts"I GIVE ONE to the item below"
                return score

               
              end
                #Below is output for console testing
                #puts"#{i} #{j}"
                #puts"#{guessestemp[i-1]} == #{winnerstemp[j-1]}"
 
            end
          end
          
          #in case nothing is correct    
          score*0
        end #if    
        

        end#score         


      #score(guesses,winners)
      end #class
        
  end #class


end#module



