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
        #subscore method
        def subScore(n)
          subTotal=0
          case 
           when n==0 #first place
            subTotal = subTotal + 15
           when n==1 #second place 
            subTotal = subTotal + 10
           when n==2 #3rd place  
            subTotal = subTotal + 5 
           when n==3 #4th place
            subTotal = subTotal + 3
           when n==4 #5th place
            subTotal = subTotal + 1 
           else    
          end #case
        end #subscore

        guesses.each_with_index do |guessValue, guessIndex|
          winners.each_with_index do |winValue, winIndex|
            5.times do |n|
              if guessIndex == n and winIndex == n and guessValue == winValue
                total = total + subScore(n)
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



