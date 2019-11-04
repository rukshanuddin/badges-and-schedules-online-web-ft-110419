def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each {|name| badges << badge_maker(name)}
  return badges
end

def assign_rooms(attendees)
  rooms = []
  attendees.each_with_index {|name, idx| rooms << "Hello, #{name}! You'll be assigned to room #{idx + 1}!"}
  return rooms
end

def printer(attendees)
  counter = 0
  while counter < attendees.length
    puts batch_badge_creator(attendees)[counter]
    puts assign_rooms(attendees)[counter]
    counter +=1
  end

end
