class Search
  def self.query(keyword)    
    results = []
    Parser.search do |parser|
      parser.path = SEARCH_PATH
      parser.find( sanitize(keyword), results)
    end
    results
  end
  
  private
    
  def self.sanitize(keyword)
    keyword.gsub(/^[A-Za-z0-9 \_]/i,"")
  end

end