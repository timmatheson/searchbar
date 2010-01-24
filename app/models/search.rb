class Search
  def self.query(keyword)
    result = []
    return result if keyword.blank?
    keyword = sanitize(keyword)
    pattern = /(\w?)#{keyword}(\_?)(\w?)(.?)(png|jpg|jpeg|gif|tiff|psd|pdf)?/i
    Dir.entries(SEARCH_PATH).each do |ent|
      if File.directory?(ent) && ent =~ pattern
        Dir.entries(ent).each do |sub_ent|
          result << sub_ent if sub_ent =~ pattern
        end
      elsif ent =~ pattern
        result << ent
      end
    end
    (result - ignore_pattern)
  end
  
  private
  
  def self.sanitize(keyword)
    keyword.gsub(/^[A-Za-z0-9]/i)
  end
  
  def self.ignore_pattern
    [".","..",".DS_Store",".svn",".git"]
  end
end