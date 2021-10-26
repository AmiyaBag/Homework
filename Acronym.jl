function acronym(name)
    x = first.(split(name, [' ', '-', '_']))
    x = join(x)
    x = uppercase(x)
end
acronym("Hiiijjkll j gvgv_uhu-ji")