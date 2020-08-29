users = [{
    username: "Tushar",password:"password"
},{ username: "john" ,password: "doe"}]

def auth(username,password,list)

    list.each do |user|
        if user[:username]==username && user[:password]==password
            return user
        end

    end
    "incorrect credentials"
end

puts "Welcome"
25.times {print '-'}
attempt=1
while(attempt<4)
    print "username "
    username= gets.chomp
    print "password"
    password= gets.chomp
    authenticate = auth(username,password,users)
    print authenticate
    print "press n to continue"
    input = gets.chomp.downcase
    break if input=='n'
    attempt+=1
end
puts "you have exceeded the number of attempts " if attempt==4