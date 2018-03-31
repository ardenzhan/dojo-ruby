# Arrays

a = ["matz", "guido", "dojo", "note", "join"]
b = [5, 6, 7, 8, 9]
c = ["dojo", 9]

# puts a[0]
# puts a[4]
# print a + b, "\n"

# x = a + b
# puts x.to_s
# x = a + b - c
# puts x.to_s

# puts b.class
# puts b.shuffle.to_s
# puts b.shuffle.join(', ').to_s
# puts b.reverse.to_s
# puts b.delete(5)
# puts b.length
# puts a.sort.to_s
# # insert(index, obj)
# puts a.insert(-2, "inserted").to_s

# values_at returns new array with values specified in param
d = %w{cat dog bear}
puts d.values_at(1, 2).join(' and ')
puts d.slice(0,2).to_s