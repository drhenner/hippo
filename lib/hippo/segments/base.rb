module Hippo::Segments
  module Base
    attr_accessor :values

    def initialize
      @values = {}
    end

    def set_value(field, value)
      puts field
      field = if field =~ /\d+/
                field.to_i
              else
                self.class.fields.select{|f| f[:name] == field.to_s}.first[:sequence]
              end
      puts field
      @values[field] = value
    end

    def to_s
      output = self.class.identifier

      self.class.fields.each do |field|
        output += Hippo::FieldSeparator + @values[field[:sequence]].to_s
      end

      output += Hippo::SegmentSeparator
    end
  end
end
