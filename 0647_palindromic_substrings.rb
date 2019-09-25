require 'pry'

def count_substrings(s)
#     total = 0 + s.size
#     hash = {}
#     count = {odd: 0, even: 0}
#     hash.default = 0
#     s.each do |c|
#         hash[c] += 1
#     end
    
#     hash.values.each {|n| (n.odd?)? count[:odd] += 1 : count[:even] += 1}

    midpoint, lmid, rmid = 0, 0, 0
    left, right, total = 0, 0, 0
    if s.length.odd?
        midpoint = s.length/2
        total += 1
        left = midpoint - 1
        right = midpoint + 1
    else
        rmid = s.length/2
        lmid = rmid - 1
    end
    
    while s.length.odd? && right < s.length
        total += 1 if s[left] == s[midpoint]
        total += 1 if s[right] == s[midpoint]
        if s[left] != s[right]
            total += 2
        elsif s[left] == s[right]
            total += 3
        end
        left -= 1
        right += 1
    end
    
    while s.length.even? && rmid < s.length

        if s[rmid] != s[lmid]
            total += 2
        elsif s[rmid] == s[lmid]
            total += 3
        end
        lmid -= 1
        rmid += 1
    end
    
    total
end

count_substrings("aa")