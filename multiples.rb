
def sum_multiple(n)
    i=1
    array=[]
    n.times do |i|
        if (i%5)==0 or (i%3)==0
            array.push(i)
end
end
print array.inject(0,:+)
end

sum_multiple(1000)


