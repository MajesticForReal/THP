mails=[]
n = 0
50.times do |i|
    n = n + 1
    if n < 10
     mails[i]="jean.dupont.0#{n}@email.fr"
    else mails[i]="jean.dupont.#{n}@email.fr" 
    end
end
puts mails
