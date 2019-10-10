def is_anagram(s, t)
    s_hash, t_hash = {}, {}
    s_hash.default, t_hash.default = 0, 0
    i = 0
    while i < s.length
        s_hash[s[i]] += 1
        t_hash[t[i]] += 1
        i += 1
    end
    
    s_hash.each do |k, v|
        return false if t_hash[k] != v
    end
    
    true
end