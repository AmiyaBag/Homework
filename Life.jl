using Plots
function stepgame(cr, next)
    for i in 1:n
        for g in 1:m
            x = cr[i, g]
            d = 0
            if i < n 
                d += cr[i+1, g]
            end
            if i < n && g < m  
                d += cr[i+1, g+1]
            end
            if g < m    
                d += cr[i, g+1]
            end
            if i > 1     
                d += cr[i-1, g]
            end
            if i > 1 && g > 1
                d += cr[i-1, g-1]
            end
            if g > 1
                d += cr[i, g-1]
            end
            if g > 1 && i < n
                d += cr[i+1, g-1]
            end
            if i > 1 && g < m
                d += cr[i-1, g+1]
            end
            if d == 3 
                if x == 0
                    x = 1
                end
            end
            if d < 2
                if x == 1
                    x= 0
                end
            end
            if d > 3 
                if x == 1
                    x = 0
                end
            end
            next[i, g] = x
        end
    end
    return next, cr
end

n = 30
m = 20
st0 = rand(0:1, n, m)
st1 = zeros(n, m)
anim = @animate for time = 1:30
    st0, st1 = stepgame(st0, st1)
    heatmap(st0)
end
gif(anim, "LIFE.gif", fps = 10)