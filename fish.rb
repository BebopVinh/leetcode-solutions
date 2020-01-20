a = [4,3,2,1,5]
b = [0,1,0,0,0]

def solution(a, b)
  i = 0
  i = 1 if b[0] == 0
  while i < b.length - 1
    k = i + 1
    if b[i] != b[k]
      if a[i] > a[k]
        a.delete_at(k)
        b.delete_at(k)
      elsif a[i] < a[k]
        a.delete_at(i)
        b.delete_at(k)
      end
    else
      i += 1
    end
  end #end of while loop
  a.length
end

puts solution(a, b)