require 'pry'

def title_to_number(s)
    library = [0] + ('A'..'Z').to_a
    return library.index(s) if s.size == 1
    ans = 0
    # s.chars.reverse.each_with_index do |letter, i|
    #     if i == 0
    #         ans += library.index(letter)
    #     else
    #         ans += (26**i) * library.index(letter)   
    #     end
    # end
    
    i = s.size - 1
    j = 0
    until i < 0
        if i == 0
            ans += library.index(s[j])
        else
            ans += (26 ** i) * library.index(s[j])
        end
        i -= 1
        j += 1
    end
    ans 
end

title_to_number("AA")