
jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }
array=[17,3,6,9,15,8,6,1,10]
price_sem=[jour_1,jour_2,jour_3,jour_4,jour_5,jour_6,jour_7]

def trader_du_dimanche(array)
obt=[]
i=1
d=0
   (array.length-1).times do
    c=1
        after=array[i]
        i.times do
        before=array[i-c]
        resu=after-before
        #puts "i=#{i}"
       #puts "c=#{c}"
        #puts "a=#{after}"
        #puts "b=#{before}"
        #puts "résultat=#{resu}"
        #gets
    if resu>=d
        obt=[i-c,i]
        d=after-before
    end
c=c+1
end
i=i+1
end
print "=>#{obt} # $#{array[obt[1]]} - $#{array[obt[0]]} == $#{array[obt[1]]-array[obt[0]]}"
end


def trader_du_lundi(array)
i=0
enterprise=[]
values=[]
enterprise_value=[]
    array[0].each do |k,v|
        enterprise.push(k)
    end
    n=0
    enterprise.length.times do
           new_array=[]
    array.each_with_index do |k, i|
           new_array << k.values[n]
    end
    enterprise_value << new_array
        n=+1
        end
    c=0
    enterprise.length.times do
puts trader_du_dimanche(enterprise_value[c])
c+=1
    end
end
trader_du_lundi(price_sem)
