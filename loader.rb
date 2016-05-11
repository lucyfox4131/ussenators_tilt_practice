require 'csv'

class Loader

  def self.open(file)
    CSV.open(file, headers: true, header_converters: :symbol)
  end

end
