def decompress_rl_elist(nums)
    ans = []
    i = 0
    while i < nums.length do
        temp = Array.new(nums[i], nums[i+1])
        ans.concat(temp)
        i += 2
    end
    ans
end