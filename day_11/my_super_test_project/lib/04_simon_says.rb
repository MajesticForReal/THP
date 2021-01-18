def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, num = 2)
    ((string + " ") * num).strip #strip enlève les espaces avant et après un string
end

def start_of_word(string, num)
    array = string.split("")
    return array[0...num].join 
end

def first_word(string)
    array = string.split(" ")
    return array[0]
end

def titleize(string)
    array = string.split(" ")
    new_array = []
    array.each_with_index do |word, idx|
        if idx == 0
            new_array << word.capitalize
        elsif word == "the" || word == "and" 
            new_array << word
        else
            new_array << word.capitalize
        end
    end
    return new_array.join(" ")
end
