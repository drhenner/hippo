module Hippo::TransactionSets
  module Base
    attr_accessor :segments

    def initialize
      @segments = []
    end

    def to_s
      output = ''

      @segments.each do |segment|
        output += segment.to_s
      end
    end

    def get_segment(identifier, sequence = 0)
      @segments.select do |f|
        f.class.identifier == identifier
      end[sequence]
    end

    def method_missing(method_name, *args) 
      get_segment(method_name.to_s)
    end  
  end
end
