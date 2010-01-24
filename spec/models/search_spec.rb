require File.dirname(__FILE__) + "/../spec_helper"

describe Search do
  
  context " Query" do
    before :each do
      Search.expects(:sanitize)
      Parser.expects(:search)
    end
    
    it "should sanitize parameters" do
      Search.query("(.+)1abc")
    end
    
    it "should return the rails conf 2007 jpg" do
      Search.query("rails.png").should_not be_empty
    end
  
    it "should return no results with no keyword" do
      Search.query("").should == []
    end
  end
end