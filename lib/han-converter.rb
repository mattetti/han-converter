$:.unshift File.dirname(__FILE__)
require 'rubygems'
require 'Activesupport'
require 'converter_table'
$KCODE = 'UTF8'

module HanConverter
  include ConverterTable
  
  def to_simplified
    self.chars.split(//).map do |char|
      traditional_to_simplified[char.string] || char.string
    end.join('')
  end
  
end

class String
  include HanConverter
end