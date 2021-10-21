using Scanf
YourReplica = 0
YourReplica = gets.chomp
for char in YourReplica
    if char == "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        println("You:", YourReplica)
        println("Bob: Whoa, chill out!")
    end
end
if YourReplica == "How are you?"
    println("You:", YourReplica)
    println("Bob: Sure.")
end
