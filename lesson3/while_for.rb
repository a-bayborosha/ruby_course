$stdout.sync = true
puts "Enter any number"
answer = gets.to_i
summ = 0
arr = []
for i in 1..answer  do
  arr << i
  summ+=i
end
p arr
puts "The summ is #{summ}"
