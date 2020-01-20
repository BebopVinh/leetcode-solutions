def remove_outer_parentheses(s)
    array = s.split("")
    i = 0
    j = 1
    
    while i < s.length do
        cond1 = ( array[i] == "(" && array[j] == "(" ) 
        cond2 = ( array[i] == ")" && array[j] == ")" ) 
        array.delete_at(i) if (cond1 || cond2)
        i += 1
        j += 1
    end
    array.join("")
end