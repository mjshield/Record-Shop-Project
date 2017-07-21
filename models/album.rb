require_relative('../db/sql_runner')

class Album

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @title = params['title']
    @genre = params['genre']
    @artist = params['artist']
    @current_stock = params['current_stock'].to_i
    @ideal_stock = params['ideal_stock'].to_i
  end

  def save()
    sql = "INSERT INTO albums (title, genre, artist, current_stock, ideal_stock)
      VALUES ('#{@title}', '#{@genre}', '#{@artist}', #{@current_stock}, #{@ideal_stock} )
      RETURNING id;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end


end