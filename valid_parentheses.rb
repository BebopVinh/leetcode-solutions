require 'pry'
def is_valid(s)
    i = nil
    x = ""
    binding.pry
    if s.size.odd?
      return false
    elsif s.empty?
      return true
    elsif s.include?( x = "[]") || s.include?( x = "{}" ) || s.include?( x = "()" )
      i = s.index(x)
    else
      return false
    end
    
   #  until s.empty?
        s.slice!(i..i+1)
        is_valid(s)
   #  end 
end

is_valid("(()(")