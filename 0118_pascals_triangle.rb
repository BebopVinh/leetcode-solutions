require 'pry'

def generate(num_rows)
    i = 1
    ans = []
    prev = nil
    until i > num_rows
        row = Array.new(i) {1}
        if i > 2
            row = mod_middle(row, prev)
        end
        ans << row
        prev = ans[i - 1]
        i += 1
    end
    ans
end

def mod_middle(row, prev)
    j = 1
    until j == row.length
        row[j] = prev[j] + prev[j - 1]
        j += 1
    end
    row
end

generate(5)