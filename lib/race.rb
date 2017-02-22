module RaceBet
  class Race

    class << self
      
      def score(guesses, winners)
        ##################################################################################
        #variables
        total = 0
        ##################################################################################
        # Main logic
        guesses.each_with_index do |guessValue, guessIndex|
          winners.each_with_index do |winValue, winIndex|
            #correct first place
            if guessIndex == 0 and winIndex == 0 and guessValue == winValue
              total = total + 15
            end
            #correct 2nd place
            if guessIndex == 1 and winIndex == 1 and guessValue == winValue
              total = total + 10
            end
            #correct 3rd place
            if guessIndex == 2 and winIndex == 2 and guessValue == winValue
              total = total + 5
            end
            #correct 4th place
            if guessIndex == 3 and winIndex == 3 and guessValue == winValue
              total = total + 3
            end
            #correct 5th place 
            if guessIndex == 4 and winIndex == 4 and guessValue == winValue
              total = total + 1
            end
            if guessIndex != winIndex  and guessValue == winValue and guessIndex < 5 and winIndex < 5
              total = total + 1
            end                             
          end
        end
        total            
    

        end#score

      end #class

  end #class

end#module



