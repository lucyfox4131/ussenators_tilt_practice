require 'erb'
require 'tilt'
require_relative 'senator_index'

senator = SenatorIndex.new('ussenator.csv')
senator.load_senators
senator_array = senator.senators

template = Tilt::ERBTemplate.new('template.erb')

File.open "senators.html", "w" do |file|
  senator_array.each do |s|
    file.write template.render(s)
  end
end
