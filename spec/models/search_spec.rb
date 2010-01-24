require File.dirname(__FILE__) + "/../spec_helper"

describe Search do
  
  it "should sanitize parameters" do
    Search.expects(:sanitize).once.with("(.+)1abc").returns("1abc")
    Search.query("(.+)1abc")
  end
  
  it "should return no results with no keyword" do
    Search.query("").should == []
  end
end