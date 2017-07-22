require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :artist_name

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @artist_name = params['artist_name']
  end

  def save()
    sql = "INSERT INTO artists (artist_name) 
          VALUES ('#{@artist_name}')
          RETURNING id;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end

 def self.find(search_id)
   sql = "SELECT * FROM artists WHERE id = #{search_id};"
   return self.map_items(sql).first
 end

  def self.find_all()
    sql = "SELECT * FROM artists;"
    return self.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    results = SqlRunner.run(sql)
    return results.map{ |artist| Artist.new(artist) }
  end

end