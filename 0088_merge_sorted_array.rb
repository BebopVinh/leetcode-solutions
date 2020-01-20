require 'pry'
nums1 = [1,2,3,0,0,0]
nums2 = [2,5,6]
m, n = 3, 3

def merge(nums1, m, nums2, n)
    i = 0
    j = 0
    until j = n
      binding.pry
        if nums2[j] >= nums1[i] && nums2[j] <= nums1[i+1]
         binding.pry
            nums1.insert(i, nums2[j])
            nums1.delete_at(m)
            j += 1
            m += 1
        else
         binding.pry
            i += 1
        end
    end
    puts nums1
end

merge(nums1, m, nums2, n)