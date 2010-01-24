require File.dirname(__FILE__) + "/../spec_helper"

describe SearchController do
  it "should render index" do
    get :index
    response.should be_success
  end
  
  it "should process a search" do
    f = File.new(RAILS_ROOT + "/public/images/xyz.jpg", "w")
    get :query, :q => "xyz"
    assigns(:results).include?(File.basename(f.path)).should == true
  end
end