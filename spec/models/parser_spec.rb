require File.dirname(__FILE__) + "/../spec_helper"

describe Parser do
  
  context " configuration" do
    it "should allow the path to be set" do
      Parser.search do |parser|
        parser.path = "."
      end
      Parser.path.should == "."
    end
  end
  
  context " search request" do
    before(:each) do
      @path = "/User/me/Pictures/"
      Dir.expects(:entries).twice.with(@path)
      File.expects(:directory?)
    end
    
    it "should do a search" do
      Parser.search do |parser|
        parser.path = @path
        parser.find("rails")
      end
    end
  end
end