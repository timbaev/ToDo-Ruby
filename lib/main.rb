require_relative 'Managers/dbManager.rb'
require_relative 'Models/event'

puts 'Welcome to TODO LIST!'

db_manager = DbManager.new

loop do
  puts 'Input command: '

  command = String.new
  
  for arg in ARGV
   command = command + arg
  end

  if command[0, 5].include? '--add'
    event_name = command[6, command.length - 1]
    event = Event.new event_name, false
    db_manager.create(event)

  elsif command == '--list'
    db_manager.read_all

  elsif command[0, 6].include? '--done'
    id = command[7, command.length - 1]
    db_manager.done(id)

  elsif command[0, 8].include? '--delete'
    id = command[9, command.length - 1]
    db_manager.delete(id)

  else
    print "Command #{command} not found (to see documentation: --help)\n"
  end
end
