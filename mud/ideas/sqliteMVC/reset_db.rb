require "sqlite3"

dir = File.dirname(__FILE__)
db = SQLite3::Database.new(File.join(dir, "db/mud.db"))

db.execute('DROP TABLE IF EXISTS `characters`;')
create_statement = "
CREATE TABLE `characters` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `race` TEXT,
  `coords`  INTEGER
);"
db.execute(create_statement)
