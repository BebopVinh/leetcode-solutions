require 'pry'

def coolFeature(a, b, query)


    ans = []
    aHash = generate_hash(a)
    bHash = generate_hash(b)

    q = query.shift
    q
    until query.empty?
        if q.first == 0
            b[q[1]] = q.last
            bHash = generate_hash(b)
            q = query.find {|arr| arr.first == 1}
            binding.pry
            query.delete_at(query.index(q))
        elsif q.first == 1
            sum = q.last
            count = 0
            a.each do |n|
                next if n > sum
                if bHash.has_key?(sum - n) == true
                    count += 1
                    bHash[sum - n] -= 1
                end
            end
            binding.pry
            ans << count 
            q = query.shift
        end
    end #end of query loop
    ans
end


def generate_hash(array)
    hash = {}
    hash.default = 0
    
    array.each do |n|
        hash[n] += 1
    end
    
    hash
end


a = [8, 2, 2, 9]
b = [3, 10, 1]
query = [[0,2,8], 
 [0,1,5], 
 [0,0,9], 
 [0,1,9], 
 [1,8]]

puts coolFeature(a, b, query)