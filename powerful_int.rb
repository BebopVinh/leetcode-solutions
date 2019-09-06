require 'pry'

def powerful_integers(x, y, bound)
  #some default return cases
   return [] if bound == 0 || ( bound == 1 && x == bound && y == bound )
   return [2] if x == 1 && y == 1

   i = 0
   hash = {}

   until x ** i > bound
      ans, j = 0, 0
      until ans >= bound
        ans = x ** i + y ** j
        hash[ans] = true if !hash[ans] && ans <= bound
        break if y == 1
        j += 1
      end
    break if x == 1
    i += 1
   end
   puts hash.keys
   hash.keys
end

powerful_integers(2, 3, 10)


=begin
   
Kirsten's

def powerful_integers(x, y, bound)
  i = 0
  pwr_int_array = []

  until x**i > bound
    j, pwr_int = 0, 0

    while pwr_int < bound
      pwr_int = x**i + y**j
      pwr_int_array.push(pwr_int) if pwr_int <= bound
      break if y == 1
      j += 1 
    end 
    break if x == 1
    i += 1
  end

  pwr_int_array.uniq
end

   
=end