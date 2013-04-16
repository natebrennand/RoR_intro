
i = 0
num = 100
while i < num do
    str = ""
    if i%3==0
        str += "Fizz"
    end
    if i%5==0
        str += "Buzz"
    end
    if str != ""
        puts str
    else
        puts i
    end
    i+=1
end


