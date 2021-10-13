#= Вопросы
1. Как написать проще
if a
    b
else
    c
end
a ? b : c
2. Что будет, если при созданинии параболы с точками использовать scatter без "!"?
3. Что делает plotlyjs()?
4. Зачем нужна legend?
5. Как перевернуть график?
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

#Non-mutating functions - не изменяет исходные данные
v = [3, 5, 2]
sort(v)
v

#Mutating function - изменяет исходные данные 
sort!(v)
v

#=
Broadcasting

Без точки(f.(A)) функция будет воспринимать массив,
как единое целое, а если с точкой,то будет воспринимать
каждый элемент массива отдельно.
=#
A = [i+3*j for j in 0:2, i in 1:3]
f(A)
B = f.(A)
B

#=
Packages
Pkg.add("Example") <- Установка, внутри название пакета
using Example
=#
using Colors
palette = distinguishable_colors(100)
rand(palette, 2, 2)

using Plots
x = -3:0.1:3
f(x) = x^2
y = f.(x)
gr()
plot(x, y, label="line")
scatter!(x, y, label="points")

plotlyjs()
plot(x, y, label="line")
scatter!(x, y, label="points")

globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.2, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17]
plot(numpirates, globaltemperatures, legend=false)
scatter!(numpirates, globaltemperatures, legend=false)
xflip!()
xlabel!("Пираты")
ylabel!("Температура")
title!("Палундра!")

p1=plot(x,x)
p2=plot(x,x.^2)
p3=plot(x,x.^3)
p4=plot(x,x.^4)
plot(p1,p2,p3,p4, layout=(2,2), legend=false)

#Multiple dispatch
methods(+)
@which 3+3
@which 3.0+3.0
@which 3+3.0

import Base: +
+(x::String, y:: String) = string(x,y)
"hello" + " " + "world" + "!"

foo(x,y) = println("duck-typed foo!")
foo(x::Int, y::Float64) = println("foo with an integer and a float!")
foo(x::Float64, y::Float64) = println("foo with two floats!")
foo(x::Int, y::Int) = println("foo with two integers!")
foo("Hello",1)
foo(1.,1.)
foo(1,1.0)
foo(true,false)