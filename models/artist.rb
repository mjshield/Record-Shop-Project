require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :first_name, :last_name

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @first_name = params['first_name']
    @last_name = params['last_name']
  end

  def save()
    sql = "INSERT INTO artists (first_name, last_name) 
          VALUES ('#{@first_name}', '#{@last_name}')
          RETURNING id;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end


  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)
  end

end