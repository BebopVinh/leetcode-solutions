require 'pry'
n = 2
# def is_happy(n)
#     ans, i = 0, nil
#     while i != 0
#       if n % 10 == 0
#          ans += 1
#          break
#       else
#         i = n % 10
#         n = n - i
#         ans += i ** 2
#         binding.pry
#       end
#     end
#     ans == 1 ? ans : is_happy(ans)
# end

def is_happy(n)
    slow, fast = n, n
    while true
      slow = square_num(slow)
      fast = square_num(square_num(fast))
      if slow != fast
         next
      else
         break
      end
   end
   (slow == fast == 1) ? true : false
end

def square_num(n)
   ans = 0
   while n != 0
      ans += (n % 10) ** 2
      n = n / 10
   end
   ans
end

is_happy(n)