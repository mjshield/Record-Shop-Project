require_relative('../db/sql_runner')

class Artist

  attr_accessor :artist_name
  attr_reader :id

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @artist_name = params['artist_name'].split.map(&:capitalize).join(' ')
  end

  def save()
    sql = "INSERT INTO artists (artist_name) 
          VALUES ('#{@artist_name}')
          RETURNING id;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end

  def update()
    sql = "UPDATE artists SET 
     artist_name = '#{@artist_name}'
     WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def albums
    sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
    return Album.map_items(sql)
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