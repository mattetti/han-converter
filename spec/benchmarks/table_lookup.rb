require "rubygems"
require "benchwarmer"
require File.dirname(__FILE__) + '/../../lib/han-converter'

TIMES = 1_000

Benchmark.warmer(TIMES) do    
                           
  group("traditional to simplified") do                                
    report "with #to_simplified" do                          
      "在您的手機上觀看和上載".to_simplified
    end
  end
  
  group("simplified to traditional") do
    report "with #to_traditional" do
      "在您的手机上观看和上载".to_traditional
    end
    
  end
    
end
