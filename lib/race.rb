module RaceBet
  class Race

    class << self
      
      def score(guesses, winners)
        ##################################################################################
        #variables       
        keys= Array.new(6,false) #logical flags for result
        score = 1
        total = 0
        counter = 0
        i=1
        j=1
        ##################################################################################
        # Main logic
                    
        #correct first place
        if guesses[0]==winners[0] and guesses[0].nil? == false and winners[0].nil? == false       
         keys[1]=true 
        end
        #correct 2nd place
        if guesses[1]==winners[1] and guesses[1].nil? == false and winners[1].nil? == false
          keys[2]=true 
        end
        #correct 3rd place
        if guesses[2]==winners[2] and guesses[2].nil? == false and winners[2].nil? == false
          keys[3]=true
        end
        #correct 4th place
        if guesses[3]==winners[3] and guesses[3].nil? == false and winners[3].nil? == false
          keys[4]=true
        end
        #correct 5th place      
        if guesses[4]==winners[4] and guesses[4].nil? == false and winners[4].nil? == false
          keys[5]=true
        end
        
           #gives one point for a correct guess in the wrong place
          
           winners.length.times do |i|
            winners.length.times do |j|
              if guesses[i-1]==winners[j-1] and i!=j and 
                guesses[i-1].nil? == false and winners[j-1].nil? == false and 
                guesses[i-1] != "loser" and winners[j-1] != "loser" 
                #end of logical condition  
                keys[0]=true
                counter = counter + 1
                                             
              end 
            end
          end       

        ##################################################################################
        #Return value logic
        if  keys[1] == true
          total = total + 15
        end
        if keys[2] == true
          total = total + 10
        end
        if keys[3] == true
          total = total + 5
        end
        if keys[4] == true
          total = total + 3
        end                  
        if keys[5] == true
          total = total + 1
        end
        if keys[0] == true
          total = total + counter*score
        end
        #Returning value
        total

        end#score

      end #class

  end #class

end#module



