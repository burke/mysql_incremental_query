class Mysql
  def incremental_query(query, &block)
    result = nil;
    def result.free;end
    qwr = self.query_with_result
    begin
      self.query_with_result = false
      result = self.query(query).use_result
      result.each { |row| yield(row) }
    ensure
      self.query_with_result = qwr
      result.free
    end
  end
end
