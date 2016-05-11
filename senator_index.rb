require 'csv'
require_relative 'loader'
require_relative 'senator'
require 'pry'

class SenatorIndex
  attr_reader :senators

  def initialize(file_path)
    @file_path = file_path
    @senators = []
  end

  def load_senators
    Loader.open(@file_path).each do |row|
      @senators << Senator.new(row)
    end
  end

end
