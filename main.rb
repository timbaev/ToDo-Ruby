require_relative 'dbManager.rb'
require_relative 'event.rb'

puts "Welcome to TODO LIST!"

db_manager = DbManager.new

while true
  puts "Input command: "
    
  command = gets.chomp
    
  if command[0, 5].include? "--add"
    event_name = command[6, command.length - 1]
    event = Event.new event_name, false
    db_manager.create(event)
    
    elsif command == "--list"
      db_manager.readAll
    
    elsif command[0, 6].include? "--done"
      id = command[7, command.length - 1]
      db_manager.done(id)
    
    elsif command[0, 8].include? "--delete"
      id = command[9, command.length - 1]
      db_manager.delete(id)
    
    else
      print "Command #{command} not found (to see documentation: --help)\n"
  end  
end
