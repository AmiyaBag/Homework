#= Вопросы
1. Как написать проще
if a
    b
else
    c
end
2. Как вынести в текст аргумент из массива?
3. Как написать
4.
5. 
=#

#Dictionaries - словари
status = Dict("Kris" => "Master")
status["Amina"] = "Slave"
status

#Tuples - картежи
myfavoritefood = ("nothing", "nothing", "chocolate")
myfavoritefood[3]

#Arrays - массивы
myfriends = ["Kris", "Louise", "Masha", "Sasha"]
fibonacci = [1, 1, 2, 3, 5, 8, 13]
mix = [1, 2, 3.0, "hi"]
myfriends[4] = "Baka"
push!(fibonacci, 21) #добавить в конец
pop!(fibonacci) #убрать из конца 
ideas = [["selfharm", "die"], ["cook food", "eat food"], ["buy chocolate", "eat chocolate"]]
numbers = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]
W = rand(3, 3)
W

#Loops
myfriends = ["Kris", "Louise", "Masha", "Sasha"]
i = 1
while i <= length(myfriends)
    friend = myfriends[i]
    println("Hi $friend, it's great to see you!")
    i+=1
end

for n in 1:10 #or "for n = 1:10" 
    println(n)
end

for friend in myfriends
    println("Hi $friend, it's great to see you!")
end

m, n = 5, 5
A = zeros(m,n)
for i in 1:m #or "for i in 1:m, j in 1:n
    for j in 1:n
        A[i, j] = i + j
    end
end
A

C = [i+j for i in 1:m, j in 1:n]

for n in 1:10
    A = [i + j for i in 1:n, j in 1:n]
    display(A)
end

#Conditionals
x = rand(1:10)
y = rand(1:10)
if x > y
    println("$x больше чем $y")
elseif y > x
    println("$y больше чем $x")
else
    println("$x и $y равны")
end
#=
Это:
if a 
    b 
else
    c 
end
Равносильно этому:
a ? b : c
Пример: =#
b = max(x,y)
d = min(x, y) 
(x>y) || (x<y) ? println("$b больше чем $d") : println("$x и $y равны")

#Function
function sayhi(name) #or "sayhi(name) = println("Hi $name, it's great to see you!")
    println("Hi $name, it's great to see you!")    
end

function f(x) #or f(x) = x^2
    x^2
end

sayhi("Amina")
f(78)

#Anonymous functions
sayhi3 = name -> println("Hi $name, it's great to see you!")
f3 = x -> x^2
sayhi("Anton")
f3(9)

#Non-mutating functions
v = [3, 5, 2]
sort(v)
v

#Mutating function
sort!(v)
v

#Broadcasting
A = [i+3*j for j in 0:2, i in ]