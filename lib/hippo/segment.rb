autoload :ST,            'hippo/segments/ST'
module Hippo
  module Segment
    
  class << self
      attr_accessor :field_separator, 
                    :segment_separator, 
                    :identifier, 
                    :fields

      def initialize
        fields = []
        field_separator ||= '*'
        segment_separator ||= '~'
        sequence_counter = 1
      end

    def add_field(opts={})
      {:default => nil, :options => nil, :sequence => (@@fields.length + 1)}.merge!(opts)

      @@fields << opts
    end
    
    end
    

    attr_accessor :values
    
    def initialize
      values = {}
    end
    

    def set_value(field, value)
      field = if field =~ /\d+/
                field
              else
                self.fields.select{|f| f[:name] == field.to_s}.first[:sequence]
              end

      values[field] = value
    end
    
    def to_s
      output = @@identifier

      @@fields.each do |field|
        puts field + "field"  
        puts @@field_separator + "field_separator"
        puts @values[field[:sequence]].to_s + "field[:value]"

        output += field_separator + field[:value].to_s
      end

      output += segment_separator
    end
  end
end
