s = '{[()()]}'

def solution(s)
   hash = {
      ")" => "(",
      "]" => "[",
      "}" => "{"
   }

   stack = []
   s.each_char do |c|
      if hash.values.include?(c)
         stack << c
      else
         return 0 if stack.pop != hash[c]
      end
   end
   stack.empty? ? 1 : 0
end

puts solution(s)