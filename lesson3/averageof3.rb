
$stdout.sync = true

count = 0
summ = 0
loop do
  #####
    if count+1 == 1
      num_str = "first"
      elsif count+1 == 2
        num_str = "second"
      else
        num_str = "third"
    end
    ######
    puts "Enter the #{num_str} number"
    num = gets.to_i
    summ+=num
    count+=1
    if count == 3
      p (summ.to_f/count)
      break
    end
end
