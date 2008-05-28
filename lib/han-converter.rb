$:.unshift File.dirname(__FILE__)
require 'rubygems'
require 'activesupport'
require 'converter_table'
$KCODE = 'UTF8'

module HanConverter
  include ConverterTable
  
  def to_simplified
    self.chars.split(//).map do |char|
      traditional_to_simplified[char.string] || char.string
    end.join('')
  end
  
  def to_traditional
    self.chars.split(//).map do |char|
      if new_char_h = traditional_to_simplified.detect{|k,v| v == char.string}
        new_char_h.first
      else
        char.string
      end
    end.join('')
  end
  
end

class String
  include HanConverter
end