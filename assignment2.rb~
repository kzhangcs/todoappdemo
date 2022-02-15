word_frequency = Hash.new(0)

# line_arr = []
File.open("assignment2.txt", "r:ISO-8859-1") do |file|
  file.each_line { |line| 
    words = line.encode("utf-8", replace: nil).split
    words.each do |word|
      word_frequency[word] += 1
    end
  }
end

puts(word_frequency.map{ |k,v| "#{k} => #{v}" } )