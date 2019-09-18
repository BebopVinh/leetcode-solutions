require 'pry'

# def first_uniq_char(s)
#     hash = {}
#     hash.default = 0
#     arr = s.split("")
#     arr.each do |n|
#         hash[n] += 1
#     end
#     # keys = hash.keys
#     values = hash.values
#     index = values.find_index(1)
#     return -1 if index == nil
#     c = hash.keys[index]
#     arr.find_index(c)
# end

def first_uniq_char(s)
    count = {}
    count.default = 0
    index = {}
    arr = s.split("")

    arr.each.with_index do |c, idx|
        count[c] += 1
         unless index[c]
            index[c] = idx
         end
    end
   
    char = count.key(1)
    (char.nil?)? -1 : index[char]
end

first_uniq_char("dddccdbba")


