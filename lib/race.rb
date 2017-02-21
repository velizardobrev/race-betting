module RaceBet
  class Race

    class << self
      #guesses = [:joe, :mary, :bob, :sheldon, :howard, :frank]
      #winners = [:mary, :bob, :sheldon, :howard, :frank]
      
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
      
               
        #correct first place
        if guesses[0]==winners[0] and guesses[0].nil? == false and winners[0].nil? == false       
         keyFirst = true 
        end
        #correct 2nd place
        if guesses[1]==winners[1] and guesses[1].nil? == false and winners[1].nil? == false
          keySecond = true
        end
        #correct 3rd place
        if guesses[2]==winners[2] and guesses[2].nil? == false and winners[2].nil? == false
          keyThird = true
        end
        #correct 4th place
        if guesses[3]==winners[3] and guesses[3].nil? == false and winners[3].nil? == false
          keyForth = true
        end
        #correct 5th place      
        if guesses[4]==winners[4] and guesses[4].nil? == false and winners[4].nil? == false
          keyFifth = true
        end
        
           #gives one point for a correct guess in the wrong place
          

           guesses.length.times do |i|
            winners.length.times do |j|
              if guessestemp[i-1]==winnerstemp[j-1] and i!=j and guessestemp[i-1].nil? == false and winnerstemp[i-1].nil? == false    
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


      
      end #class
        
  end #class
  

end#module



