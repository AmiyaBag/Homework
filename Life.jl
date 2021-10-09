c = rand(0:1, 10, 5)
#for x in partitions(k*d + n, n)
for x in partitions(k*d + n, n)
    x = x .- 1
    if all(x .<= d) 
        ys = Set(permutations(x))
    end
end
