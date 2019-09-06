require 'pry'

nums = [1,2,3,1]

def rob(nums)
    inc = nums.shift
    ex = 0
    nums.each do |n|
        new_ex = [inc, ex].max
        inc = (ex + n)
        ex = new_ex
    end  
    puts [inc, ex].max
    [inc, ex].max
end

rob(nums)

