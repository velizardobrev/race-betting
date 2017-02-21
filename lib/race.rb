module RaceBet
  class Race

    class << self
      guesses = [:joe, :mary, :bob, :sheldon, :howard, :frank]
      winners = [:mary, :bob, :sheldon, :howard, :frank]
      
      def score(guesses, winners)
        ##################################################################################
        #first 5 elements of both arrays
        winnerstemp = winners[0..4]
        guessestemp = guesses[0..4]

        #logical flags for result
        keyFirst = false
        keySecond = false
        keyThird = false
        keyForth = false
        keyFifth = false
        keyScore = false
        #keyZero = false
        #helping variables
        score = 1
        total = 0
        counter = 0
        i=1
        j=1
        ##################################################################################
        # Main logic
        if guesses[0]==winners[0] and guesses[1]==winners[1] and guesses[2]==winners[2]
               
        #correct first place
        elsif guesses[0]==winners[0]       
         keyFirst = true 
        #correct 2nd place
        elsif guesses[1]==winners[1]
          keySecond = true
        #correct 3rd place
        elsif guesses[2]==winners[2]
          keyThird = true
        #correct 4th place
        elsif guesses[3]==winners[3]
          keyForth = true
        #correct 5th place      
        elsif guesses[4]==winners[4]
          keyFifth = true
        
 
        else
          #gives one point for a correct guess in the wrong place
          5.times do |i|
            5.times do |j|
              if guessestemp[i-1]==winnerstemp[j-1] and i!=j
                #Below is output for console testing
                #puts"I GIVE ONE to the item below"
                keyScore = true
                counter = counter + 1                

               
              end
                #Below is output for console testing
                #puts"#{i} #{j}"
                #puts"#{guessestemp[i-1]} == #{winnerstemp[j-1]}"
 
            end
          end
          
          #in case nothing is correct    
          #keyZero = true
        end #if
        ##################################################################################
        #Return value logic
        if  keyFirst == true
          total = total + 15
        end
        if keySecond == true
          total = total + 10
        end
        if keyThird == true
          total = total + 5
        end
        if keyForth == true
          total = total + 3
        end                  
        if keyFifth == true
          total = total + 1
        end
        if keyScore == true
          total = total + counter*score
        end
        #Returning value
        total          

        end#score         


      #score(guesses,winners)
      end #class
        
  end #class


end#module



