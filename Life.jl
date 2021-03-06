mutable struct GameOfLife
    current_frame::Matrix{Int}
    next_frame::Matrix{Int}
end

function stepgame!(state::GameOfLife)
    cr   = state.current_frame
    next = state.next_frame
    for i in 1:n
        for g in 1:m
            x = cr[i, g]
            d = 0
            
            d += cr[mod1(i+1,n), mod1(g+1,m]
            d += cr[mod1(i-1,n), mod1(g-1,m)]
            d += cr[mod1(i+1,n), g]
            d += cr[mod1(i-1,n), g]
            d += cr[i, mod1(g-1,m)]
            d += cr[i, mod1(g+1,m)]
            d += cr[mod1(i-1,n), mod1(g+1,m)]
            d += cr[mod1(i+1,n), mod1(g-1,m)]
            #if i < n 
            #    d += cr[i+1, g]
            #end
            #if i < n && g < m  
            #    d += cr[i+1, g+1]
            #end
            #if g < m
            #    d += cr[i, g+1]
            #end
            #if i > 1     
            #    d += cr[i-1, g]
            #end
            #if i > 1 && g > 1
            #    d += cr[i-1, g-1]
            #end
            #if g > 1
            #    d += cr[i, g-1]
            #end
            #if g > 1 && i < n
            #    d += cr[i+1, g-1]
            #end
            #if i > 1 && g < m
            #    d += cr[i-1, g+1]
            #end
            if d == 2 || d == 3
                if x == 0
                    p = rand(1:10)
                    if (p > 1)
                        x = 1
                end
            end
            if d < 2 || d > 3
                if x == 1
                    p = rand(1:10)
                    if (p > 1)
                        x = 0
                end
            end
            next[i, g] = x
        end
    end
    # swap
    state.current_frame = next
    state.next_frame = cr 
    return nothing
end

using Plots

n = 150
m = 150

game = GameOfLife(rand(0:1, n, m), zeros(n, m))

anim = @animate for time = 1:100
    stepgame!(game)
    cr = game.current_frame
    heatmap(cr)
end
gif(anim, "LIFE.gif", fps = 10)
