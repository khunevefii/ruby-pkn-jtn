=begin
Jitranuch Sinthawat 5631220821	
Pornkanok Ketmalasiri 5631288521	
=end

require 'csv'
data = CSV.read('data.csv')
puts "Parse a CSV file:"
CSV.foreach('data.csv') { |row| puts row.inspect }
data.delete_at(0)
puts ""

#1
puts "#1"
puts "Which student has the highest score in the class?"
print ">> "
puts data.max_by{|row| row[1]}[0]
puts "Lowest?"
print ">> "
puts data.min_by{|row| row[1]}[0]
puts ""

#2
puts "#2"
puts "What is the mean of all student’s scores?"
score = Array.new
data.each {|row| score << row[1].to_f}
sum=0.0
score.each {|val| sum += val}
print ">> "
puts avg = sum/score.size
puts ""

#3
puts "#3"
puts "What is the most popular color among students?"
print ">> "
color = Array.new
data.each { |row| color << row[2] }
h = Hash.new(0)
color.each{ |v| h[v]+=1}
puts h.max_by{ |k,v| v}.first
puts "Least popular?"
print ">> "
puts h.min_by{ |k,v| v}.first
puts ""

#4
puts "#4"
puts "Capitalize the last letter of first name and last name, and lowercase the first letter of first name and last name."
data.each do |row|
	print ">> "
	puts row[0].reverse.split(/\b/).map(&:capitalize).join.reverse
end