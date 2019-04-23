#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(numArray)
    total = 0

    numArray.each do |num|
        total += num
    end

    total
end

def multiply(numArray)
    total = 1
    numArray.each do |num|
        total = total * num
    end
    total
end

def power(num1, num2)
    num1 ** num2
end
