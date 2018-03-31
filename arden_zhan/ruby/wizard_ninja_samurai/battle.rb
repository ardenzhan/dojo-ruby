require_relative 'human'
require_relative 'wizard'
require_relative 'ninja'
require_relative 'samurai'

h = Human.new
w = Wizard.new
s = Samurai.new
n = Ninja.new
# puts "Samurai Count: #{Samurai.how_many}"

def status(h,w,s,n)
  puts h.inspect
  puts w.inspect
  puts s.inspect
  puts n.inspect
end

status(h,w,s,n)
w.fireball(h)
status(h,w,s,n)
s.death_blow(h)
s.death_blow(n)
status(h,w,s,n)
