class Parser
  cattr_accessor :path
  
  def self.search(*args, &block)
    @@path = SEARCH_PATH
    yield self
  end
  
  def self.find(keyword, results = [])
    unless keyword.blank?
      pattern = patternize(keyword)
      Dir.entries(@@path).each do |ent|
        if !File.directory?(ent) && ent =~ pattern
          results << [ent,ent.match(pattern).length]
        end
      end if Dir.entries(@@path)
    end
    sort_result(results - ignore_pattern)
  end
  
  private
  
  def self.sort_result(array)
    array.sort{ |result, array| array[1] }.collect{ |a| a[0] }
  end
  
  def self.patternize(keyword)
    /(#{keyword}|(\w+2\-\_ (.+)+\w+)|#{keyword}\.(png$|jpg$|jpeg$|gif$|pdf$|psd$))/i
  end
  
  def self.ignore_pattern
    [".","..",".DS_Store",".svn",".git"]
  end
end