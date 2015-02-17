class Book
  def self.find( hash = {})
    hash.assert_valid_keys :conditions, :joins, :selector
    hash[:conditions] ||= ''
    hash[:joins]      ||= []
    sql               = ['SELECT * FROM books']
    hash[:joins].each do |join_table|
      sql << "LEFT OUTER JOIN #{join_table} ON"
      sql << "books.#{join_table.to_s.chap}_id"
      sql << " = #{join_table}.id"
    end
    sql << "WHERE #{hash[:conditions]}" unless hash[:conditions].empty?
    sql << 'LIMIT 1' if hash[:selector] == :first
    connection.find(sql.join(' '))
  end
end
