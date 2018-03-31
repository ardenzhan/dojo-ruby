# Hashes
# h = {:first_name => "Coding", :last_name => "Dojo"}
h = {first_name: "Coding", last_name: "Dojo"}
puts "Hash: #{h}"
puts "Deleted: #{h.delete :last_name}"
puts "Hash: #{h}"
puts "Empty? #{h.empty?}"
puts "Has first_name key? #{h.has_key?(:first_name)}"
puts "Has \"Coding\" value? #{h.has_value?("Coding")}"
puts

# Keyword Arguments
# basically same as regular paramenters except default vars values are defined with : instead of =
# cleaner way to use hash as argument
def new_user(greeting = "Welcome", first_name: "First", last_name: "Last")
  puts "#{greeting}, #{first_name} #{last_name}"
end
my_user = {first_name: "Arden", last_name: "Zhan"}
new_user
new_user("Hello", my_user)
