# lib/vtf/vtf.rb
module Vtf
  class Error < StandardError; end

  # Main vtf class
  class Vtf
    attr_accessor :header

    def initialize(header)
      @header = header
    end
  end
end
