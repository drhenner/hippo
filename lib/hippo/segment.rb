
module Hippo
  autoload :ST,            'hippo/segments/ST'

  module Segment
    attr_accessor :values
    
    def initialize
      values = {}
    end
    
    def set_value(field, value)
      field = if field =~ /\d+/
                field
              else
                self.FIELDS.select{|f| f[:name] == field.to_s}.first[:sequence]
              end

      values[field] = value
    end
    
    def to_s
      output = IDENTIFIER

      @@fields.each do |field|
        output += field_separator + @values[field[:sequence]].to_s
      end

      output += segment_separator
    end
  end
end
