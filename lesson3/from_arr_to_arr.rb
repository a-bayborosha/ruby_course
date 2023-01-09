$stdout.sync = true
def cut_array (array, value)
   destination = []
   destination = array.shift(value)
   return destination
end

base_array = [1,2,3,4,5,6,7,8,9,10]


puts "How many elements shoud be cutted?"
answer = STDIN.gets.to_i
p cut_array(base_array, answer)
p base_array
