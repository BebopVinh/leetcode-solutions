def contains_duplicate(nums)
    return false if nums.empty?
    hash = Hash.new(0)
    nums.each do |n|
        hash[n] += 1
        return true if hash[n] > 1
    end
    false
end