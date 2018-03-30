# puts echoes onto console
# places new line at end
puts "hello"
puts "Coding"
puts "Dojo"

# print does not place new line at end
print "hello"
print "coding"

# comment
=begin
    long comment
    another comment
    =begin and =end for comment block
=end

# code implemented before all the other code
BEGIN {
    puts "BEGIN BLOCK"
}

# code implemented last
END {
    puts "END BLOCK"
}

# In ruby, new line assumes new statement
# Can also use semicolons to separate statements in same line
x = 5
y = 10
z = x + y
puts z
x = 5; y = 10; z = x + y; puts z

# Commas can be used for multiple arguments
first_name = "Arden"
last_name = "Zhan"
puts "My name is ", first_name, last_name

# + can be used to concatenate
puts "My name is " + first_name + " " + last_name

# #{var} to insert into string
# % and array can also be used
puts "First name is #{first_name} and last name is %s" % [last_name]

# %d for decimal, %f for float
z = 50; y = 10
puts "Value of z is %d" % [z]
# can pass single variable directly without array
puts "Value of z is %d" % z

# \ used for escaping quotes, \"
# \t adds tab, \n adds new line

# Important Note
# puts method always returns nil, it just outputs the string to the console
x = puts "hello world" 
# outputs string to console, returns nil
puts x 
# outputs blank line to console, returns nil