def count_substrings(s)
    total = 0 + s.size
    hash = {}
    count = {odd: 0, even: 0}
    hash.default = 0
    s.each do |c|
        hash[c] += 1
    end
    
    hash.values.each {|n| (n.odd?)? count[:odd] += 1 : count[:even] += 1}
    
end