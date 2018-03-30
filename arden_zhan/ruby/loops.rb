# do/end, newline, or semicolon to indicate while loop's block (indicate where condition ends)
i = 0
num = 5
while i < num do
    puts "Inside the loop i = #{i}"
    i += 1
    # break if i == 2
end


# .. inclusive range
# ... exclusive range
for i in 0..5
    puts "Value of local variable is #{i}"
end


# next skips to next index
for i in 0..5
    next if i == 2
    puts "Value of local variable is #{i}"
end