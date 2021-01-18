def add (a,b)
        result = a + b
        return result
end

def subtract (a,b)
        result = a - b
        return result
end

def sum (array=[])
        sum = 0
        array.each { |a| sum+=a }
        return sum
end

def multiply (a,b)
        result = a * b
        return result

end

def power(a,b)
        result = a ** b
        return result
end

def factorial(nb)
        i = 1
        res = 1
        if nb <= 0
                return 1
        end
        while i <= nb
                res = i * res
                i = i + 1
        end
        return res
end
