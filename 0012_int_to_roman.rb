require 'pry'

n = 58

def int_to_roman(num)
    array = num.to_s.split("")
    i = num.dup
    base = 10 ** (array.length - 1)
    hash = {
        1 => "I",
        5 => "V",
        10 => "X",
        50 => "L",
        100 => "C",
        500 => "D",
        1000 => "M"
        }
    ans = ""

    
    array.each do |c|
        n = c.to_i
        if base == 1000
            ans << hash[base] * n
        elsif n == 9
            ans << hash[1 * base]
            ans << hash[10 * base]
        elsif n > 5
            ans << hash[5 * base]
            n -= 5
            ans << hash[1 * base] * n
        elsif n == 5
            ans << hash[5 * base]
        elsif n == 4
            ans << hash[1 * base]
            ans << hash[5 * base]
        else
            ans << hash[base] * n
        end
        base /= 10
    end
    ans
end

puts int_to_roman(n)