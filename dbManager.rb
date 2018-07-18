require 'sqlite3'

class DbManager
  attr_accessor :db

  def initialize
    @db = SQLite3::Database.open "todo.db"
    @db.execute "CREATE TABLE IF NOT EXISTS events(event_id INTEGER PRIMARY KEY AUTOINCREMENT, event_name TEXT, event_done BOOLEAN)"

	rescue SQLite3::Exception => e 
    
    puts "Exception occurred"
    puts e
    
	ensure

  end
    
  def readAll
    stm = db.prepare "SELECT * FROM events"
    rs = stm.execute

    rs.each do |row|
      puts row.join "\s"
    end
  end

  def create(event)
    @db.execute "INSERT INTO events(event_name, event_done) VALUES ('#{event.name}', '#{event.done}')"
        
    rescue SQLite3::Exception => e
        
    puts "Exception occurred"
    puts e
  end
    
  def done(id)
    stm = db.prepare "UPDATE events SET event_done = 'true' WHERE event_id = '#{id}'"
    rs = stm.execute
        
    rescue SQLite3::Exception => e
        
    puts "Exception occurred"
    puts e
  end
    
  def delete(id)
    @db.execute "DELETE FROM events WHERE event_id = '#{id}'"

    rescue SQLite3::Exception => e
        
    puts "Exception occurred"
    puts e
  end
end
