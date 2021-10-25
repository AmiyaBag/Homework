function atbash_cipher(name)::String
    text = ['A':'Z',
            'Z':-1:'A']
    

    y::String = " "
    for i in name
        for g in text
        y = string.(g, y)
        # for g in text
        #     if i == g
        #         y = string(revers(g))
        #     end
        end
    end
    return y
end
atbash_cipher("Tommy")

function atbash_cipher(name)::String
    X = ["ABCDEFGHIJKLMNOPQRSTUVWXYZ"]
    Y = ["ZYXWVUTSRQPONMLKJIHGFEDCBA"]
    n = " "
    for h in X
        for g = 1:26
            nombersX = string.(X, g)

        end
    end    
    
    for i in name
        for g in 1
        nombersY = 
        n = string(string.(X, Y), n)
    return n
    end
end
atbash_cipher("Tom")