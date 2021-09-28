#Парабола
x = []
y = []
for i in -1000:1:1000
    push!(x, i)
    push!(y, i^2)
end

#Гипербола
x = []
y = []
k = 1000
for i in -1000:1:1000
    push!(x, i)
    push!(y, k/i)
end

#Анимация синусоида
x = collect(1:0.1:30)
y = sin.(x)
df = 2 
anim = @animate for i = 1:df:length(x)
    plot(x[1:i], y[1:i], legend=false)
end
gif(anim, "tutorial_anim_fps30.gif", fps = 30)

#Анимация тепловой карты
anim = @animate for i = 1:100
    mat = rand(0:100, 32, 32)
    heatmap(mat, clim=(0,255))
end
gif(anim, "tutorial_heatmap_anim.gif", fps = 10)

#
anim = @animate for i = 1:3
    mat = rand(0:1000, 50, 50)
    heatmap(mat, clim=(0,1000))
end
gif(anim, "tutorial_heatmap.gif", fps = 10)