$stdout.sync = true
###############################
def check(int, answer)
  if int == answer
    abort "Hurray, You won!"
  end
if (int-answer).abs >= 3
    if int-answer > 0
      puts "Coldly! Needed bigger number"
    elsif int - answer < 0
     puts "Coldly! Needed smaller number"
   end
 end
if (int - answer).abs < 3
   if int - answer > 0
        puts "Warmly! Needed bigger number"
    elsif int - answer < 0
       puts "Warmly! Needed smaller number"
   end
 end
end
###########################
  count = 0;
  num = rand(16)
  #p num
  puts "Guessed a number from 0 to 15, guess what?"
while count < 3
  guess = gets.to_i
  count+=1
  if count == 3 && guess != num
    puts "You've lost!"
    abort "The guessed number was #{num}"
  end
  check(num, guess)
end
