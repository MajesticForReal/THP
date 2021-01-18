def who_is_bigger(a, b, c)

    if a == nil || b == nil || c == nil
    return "nil detected"
    end

    if a > b && a > c
    return "a is bigger"
    end

    if b > a && b > c
    return "b is bigger"
    end

    if c > a && c > b
        return "c is bigger"
    end
end

def reverse_upcase_noLTA(string)
    string = string.reverse.upcase.delete('LTA')
    return string
end

def array_42(array)
    array.include?(42)
end

def magic_array(array)
    new_array = []
    array.flatten.each do |i|
        if i % 3 != 0
            new_array << (i * 2)
    end
end 
     return new_array.sort.uniq #uniq pour enlever les doublons
end
