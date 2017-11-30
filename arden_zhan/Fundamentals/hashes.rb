# Hashes
# h = {:first_name => "Coding", :last_name => "Dojo"}
h = { first_name: "Coding", last_name: "Dojo" }
h.delete :last_name
puts h
puts h.empty?
puts h.has_key?(:first_name)
puts h.has_value?("Coding")