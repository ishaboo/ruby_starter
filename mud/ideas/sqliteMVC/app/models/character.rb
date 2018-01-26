class Character
  attr_reader :id, :name, :race, :coords, :inventory
  attr_writer :id, :name, :race, :coords, :inventory
  def initialize(attributes={})
    @id = attributes[:id]
    @name = attributes[:name]
    @race = attributes[:race]
    @coords = attributes[:coords]
    @inventory = 0
  end

  def self.find(id)
    DB.results_as_hash = true
    first_row = DB.execute("SELECT * FROM characters WHERE id = ?", id).first
    build_record(first_row) if first_row
  end

  def self.all
    DB.results_as_hash = true
    DB.execute("SELECT * FROM characters").map { |row| build_record(row) }
  end

  def self.build_record(row)
    # row is a hash, keep only string keys (column names), and symbolize them.
    attributes = {
      id: row["id"],
      name: row["name"],
      race: row["race"],
      coords: row["coords"]
    }
    Character.new(attributes)
  end

  def save
    @id ? update : insert
  end

  def destroy
    DB.execute('DELETE FROM characters WHERE id = ?', @id)
  end

  private

  def update
    DB.execute('UPDATE characters SET coords = ?, name = ?, race = ? WHERE id = ?', @coords, @name, @race, @id)
  end

  def insert
    DB.execute('INSERT INTO characters (coords, name, race) VALUES (?, ?, ?)', @coords, @name, @race)
    @id = DB.last_insert_row_id
  end
end
