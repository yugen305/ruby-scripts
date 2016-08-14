puts "This program will take your words and sort them alphabetically"
puts ""
puts "Type in a word and press enter. When you are done, press enter on an empty line to launch program."

inputArray = []
while (inputWord = gets.chomp) != ""
    inputArray.push inputWord
    puts "Current List is: " + inputArray.join(', ')
end
print "Your list in alphabetical order is: " + inputArray.sort.join(', ') + "."
