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
  end
end
