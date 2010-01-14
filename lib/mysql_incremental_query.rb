class Mysql
  def incremental_query(query, &block)
    result = nil;
    def result.free;end
    begin
      qwr = self.query_with_result
      self.query_with_result = false
      result = self.query(query).use_result
      result.each { |row| yield(row) }
      self.query_with_result = qwr
    ensure
      result.free
    end
  end
end
