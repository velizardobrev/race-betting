module RaceBet
  class Race

    class << self
      
      def score(guesses, winners)
        ##################################################################################
        #variables
        total = 0
        n=0
        ##################################################################################
        # Main logic
        guesses.each_with_index do |guessValue, guessIndex|
          winners.each_with_index do |winValue, winIndex|
            5.times do |n|
              if guessIndex == n and winIndex == n and guessValue == winValue
                case 
                  when n==0 #first place
                    total = total + 15
                  when n==1 #second place 
                    total = total + 10
                  when n==2 #3rd place  
                    total = total + 5 
                  when n==3 #4th place
                    total = total + 3
                  when n==4 #5th place
                    total = total + 1 
                  else    
                end #case
              end #if
            end #do
            #missplaced elements
            if guessIndex != winIndex  and guessValue == winValue and guessIndex < 5 and winIndex < 5
              total = total + 1
            end                             
          end
        end
        total            
    
        end#score

      end#class

  end#class

end#module



