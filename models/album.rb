require_relative('../db/sql_runner')

class Album

  attr_accessor :title, :genre, :artist_id, :current_stock, :ideal_stock
  attr_reader :id

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @title = params['title']
    @genre = params['genre']
    @artist_id = params['artist_id'].to_i
    @current_stock = params['current_stock'].to_i
    @ideal_stock = params['ideal_stock'].to_i
  end

  def save()
    sql = "INSERT INTO albums (title, genre, artist_id, current_stock, ideal_stock)
          VALUES ('#{@title}', '#{@genre}', #{@artist_id}, #{@current_stock}, #{@ideal_stock} )
          RETURNING id;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end

  def artist()
    artist = Artist.find(@artist_id)
    return artist
  end

  def self.find(search_id)
    sql = "SELECT * FROM albums WHERE id = #{search_id};"
    return self.map_items(sql).first
  end

  def self.find_all()
    sql = "SELECT * FROM albums;"
    return self.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM albums;"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    results = SqlRunner.run(sql)
    return results.map{ |album| Album.new(album) }
  end

end