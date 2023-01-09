$stdout.sync = true
puts "How long will the array of random numbers be?"
answer = gets.to_i
arr = []

while answer != 0 do
  arr.push(rand(100))
  answer-=1
end
max = 0
for i in arr do
  if i > max
    max = i
  end
end
## another variant
# for i in 0...answer do
#   arr.push(rand(101))
# end
#
# p arr
# p arr.max { |a, b| a <=> b }

p arr
p max
