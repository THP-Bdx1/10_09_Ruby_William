def chiffre_de_cesar(string,n)
word=string.split('')
asci=[]
new_asci=[]
new_phrase=[]
word.each do |w|
   asc=w.ord
    asci.push(asc)
end
asci.each do |number|
    if number<=90 && number>=65
    number=number+n
    if number>90
        number=number-26
    end
elsif number<=122 && number>=97
    number=number+n
    if number>122
        number=number-26
    end
end
new_asci.push(number)
end
new_asci.each do |number|
    letter=number.chr
    new_phrase.push(letter)
end
puts new_phrase.map {|i| + i.to_s}.join
end

chiffre_de_cesar("What a string !",5)