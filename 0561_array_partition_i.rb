#description is unclear and test cases doesn't line up with it.

def array_pair_sum(nums)
    sum = 0
    return sum if nums.length <= 1
    return nums.min if nums.length == 2
    n = nums.length/2
    nums.sort!
    
    while nums.length >= n do
        # temp = [nums.shift, nums.pop]
        temp = nums.slice!(0, n)
        sum += temp.min
    end
    sum
end