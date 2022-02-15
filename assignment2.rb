word_frequency = Hash.new(0)
pattern = /[.]*@([a-z\d]+\.com)[.]*/i

# line_arr = []
File.open("assignment2.txt", "r:ISO-8859-1") do |file|
  file.each_line { |line| 
    words = line.encode("utf-8", replace: nil).split
    words.each do |word|
      case word
        when pattern then 
        result = word.match(pattern)
        domain = result[1]
        word_frequency[domain] += 1
      end
    end
  }
end

word_frequency.sort.each do |key, value|
   puts "#{key.rjust(word_frequency.keys.max_by(&:length).length)}: #{value} time(s)"
end