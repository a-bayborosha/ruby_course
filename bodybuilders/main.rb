require_relative "./bodybuilder.rb"


bdb1 = Bodybuilder.new
bdb2 = Bodybuilder.new
bdb3 = Bodybuilder.new

for i in 0..30
  bdb1.pump(bdb1.muscle_group)
end
for i in 0..30
  bdb2.pump(bdb2.muscle_group)
end
for i in 0..30
  bdb3.pump(bdb3.muscle_group)
end

puts "Первый бодибилдер:"
puts "#{bdb1.status}\n\n"
puts "Второй бодибилдер:"
puts "#{bdb2.status}\n\n"
puts "Третий бодибилдер:"
puts "#{bdb3.status}\n\n"
