def has_path_sum(root, sum)
    return false if sum == 0
    left, right = nil, nil

    puts "value: #{root.val}" unless root.nil?
    sum -= root.val unless root.nil?
    puts "sum: #{sum}"
    
    if sum == 0 && !root.left && !root.right
        return true
    elsif root.nil? && sum != 0
        return false
    end
    
        # return true if root.left && has_path_sum(root.left, sum) 
        # return true if root.right && has_path_sum(root.right, sum)
        left = has_path_sum(root.left, sum) 
        right = has_path_sum(root.right, sum)
        puts "left: #{left}, right: #{right}" 
    (left || right)? true : false
end