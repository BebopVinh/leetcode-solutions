require 'pry'

def count_substrings(s)

    midpoint, lmid, rmid = 0, 0, 0
    left, right, total = 0, 0, 0
    if s.length.odd?
        midpoint = s.length/2
        total += 1
        left = midpoint - 1
        right = midpoint + 1
    else
        right = s.length/2
        left = right - 1
        total += s.length
    end
    
    repeat = false
    
    while s.length.odd? && right < s.length
        total += 1 if s[left] == s[midpoint]
        total += 1 if s[right] == s[midpoint]
        repeat = (s[left] == s[midpoint] && s[midpoint] == s[right])? true : false
        total += 4 if right >= midpoint + 2 && repeat == true
        if s[left] != s[right]
            total += 2
        elsif s[left] == s[right]
            total += 3
        end
        left -= 1
        right += 1
    end
    
    # while s.length.even? && right < s.length

    #     if s[right] != s[left]
    #         total += 2
    #     elsif s[right] == s[left] && right >= (s.length/2 + 1)
    #         total += 5
    #     elsif s[right] == s[left]
    #         total += 3
    #     end
    #     left -= 1
    #     right += 1
    # end

    while s.length.even? && left >= 0 && right < s.length && s[left] == s[right]
        (s.length > 2)? total += 2 : total += 1
        left -= 1
        right += 1
    end
    
    total
end


puts count_substrings("aaaa")