def find_numbers(nums)
    total = 0
    nums.each do |n|
        count = n.to_s.length
        total += 1 if count % 2 == 0
    end
    total
end