function isogram(x)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    x = filter(occursin(alphabet), lowercase(x))
    return collect(x) == unique(x)
end

isogram("Liber Jl ")
isogram("Gigo")
isogram("yhn bs g")