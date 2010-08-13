module Hippo::TransactionSets
  class Base
    class << self
      attr_accessor :components

      def components
        @components ||= []
      end

      def segment(seg)
        components << seg
      end
    end

    def initialize
      @segments = []
    end

    def to_s
      output = ''

      self.class.components.each do |segment|
        output += segment.to_s
      end

      output
    end

    def get_component(identifier, sequence = 0)
      self.class.components.select do |s|
        s.class.identifier == identifier
      end[sequence]
    end

    def method_missing(method_name, *args) 
      get_segment(method_name.to_s)
    end  
  end
end
