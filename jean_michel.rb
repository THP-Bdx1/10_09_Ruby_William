dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

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

jean_michel_data("Howdy partner, sit down! How's it going?",dictionary)