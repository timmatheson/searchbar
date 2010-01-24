class Search
  def self.query(keyword)
    result = []
    pattern = /(.+)#{keyword}(.+)/i
    Dir.entries(File.dirname(__FILE__) + "/../../public/images").each do |ent|
      if File.directory?(ent) && ent =~ pattern
        Dir.entries(ent).each do |sub_ent|
          result << sub_ent if sub_ent =~ pattern
        end
      else
        result << ent
      end
    end
    result -= [".","..",".DS_Store",".svn",".git"]
    result
  end
end