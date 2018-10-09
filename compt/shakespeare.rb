dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def jean_michel_data(research, array)
    hashi=Hash.new
    word=research.split(' ')
    array.each do |k|
                c=0
        word.each do |l|
    if l.to_s.downcase.include?(k) == true
c+=1
end
end
if c != 0
hashi[k]=c
end
end
p hashi
end
grosmots=File.read("grosmots.txt").split

jean_michel_data(File.read("shakespeare.txt"),dictionnary)
jean_michel_data(File.read("shakespeare.txt"),grosmots)