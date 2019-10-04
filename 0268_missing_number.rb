def missing_number(nums)
    if nums.length == 1
        return (nums[0] == 0) ? 1 : nums[0] - 1
    end
    
    hash = {}
    min, max = 0, 0
    nums.each do |n|
        hash[n] = true
        min = n if n < min
        max = n if n > max
    end

    (min..max).each do |n|
        return n if !hash[n]
    end
    
    max + 1
end