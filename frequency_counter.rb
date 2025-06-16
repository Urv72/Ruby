s = "This is the sentence we need to decode the is we ."

w = s.split(" ")

counts = Hash.new 0
puts counts

w.each do |w|
    counts[w] += 1
end
puts counts