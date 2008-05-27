require File.dirname(__FILE__) + '/spec_helper.rb'

describe "han-converter" do
  
  it "should convert a traditional string into simplified Chinese" do
    "關於我們".to_simplified.should == "关於我们"
  end
  
  it "should handle spacing in a string" do
    "在您的手機上觀看和上載 YouTube 影片。".to_simplified.should == "在您的手机上观看和上载 YouTube 影片。"
  end
  
  it "should convert simplified to traditional" do
    "关於我们".to_traditional.should == "關於我們"
  end
  
  it "should handle none chinese chars to" do
    "ceci est un test".to_simplified.should == "ceci est un test"
    "l'école de Ruby".to_simplified.should == "l'école de Ruby"
  end
  
end