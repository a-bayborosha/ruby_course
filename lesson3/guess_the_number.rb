$stdout.sync = true
###############################
  count = 0;
  int = rand(16)
  p int
  puts "Guessed a number from 0 to 15, guess what?"

loop  do
  answer = gets.to_i
  count+=1
  if count <= 3 &&  answer == int
     puts "Hurray, You won!"
     break
    elsif count < 3 && (int - answer).abs >= 3
       if int - answer > 0
            puts "Coldly! Needed bigger number"
          elsif int - answer < 0
           puts "Coldly! Needed smaller number"
       end
     elsif count < 3 && (int - answer).abs < 3
       if int - answer > 0
            puts "Warmly! Needed bigger number"
          elsif int - answer < 0
           puts "Warmly! Needed smaller number"
       end
  end
      if count == 3 && answer != int
       puts "You've lost!"
       puts "The guessed number was #{int}"
       break
      end
  end
#######################################
