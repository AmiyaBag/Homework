function amstrong(number)
    dg = digits(number)
    lg = length(dg)
    y = sum(dg.^lg)
    return  y == number  
end

amstrong(9)
amstrong(10)
amstrong(153)
amstrong(154)