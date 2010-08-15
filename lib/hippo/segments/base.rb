require 'pp'

module Hippo::Segments
  class Base
    class << self
      attr_accessor :fields, :identifier

      def fields
        @fields ||= []
      end

      def identifier
        @identifier ||= ''
      end
    end

    def initialize
      @values = {}  
    end

    def get_field_name(text)
      text.to_s.gsub(' ','').gsub('=','')
    end
    
    def get_field(field)
      if field.class == Fixnum || field =~ /\a\d+\z/
        self.class.fields[field.to_i - 1]
      else
        self.class.fields.select{|f| f.name == get_field_name(field).to_s}.first
      end
    end

    def to_s
      output = self.class.identifier + Hippo::FieldSeparator
      current_separator = Hippo::FieldSeparator

      self.class.fields.each do |field|
        if current_separator != field.separator
          
        end

        output += @values[field.sequence] + field.separator
      end

      output += Hippo::SegmentSeparator
    end
    
    def self.field(field)
      f = Hippo::Field.new
      f.sequence = fields.length + 1
      f.name = field[:name]
      f.datatype = field[:datatype]
      f.options = field[:options]
      f.restrictions = field[:restrictions]
      f.separator = field[:separator] || Hippo::FieldSeparator

      self.fields << f
    end

    def self.segment_identifier(id)
      self.identifier = id
    end

    def identifier
      self.class.identifier
    end

    def method_missing(method_name, *args) 
      field = get_field(get_field_name(method_name))

      if method_name.to_s =~ /=\z/
        @values[field.sequence] = args[0]
      else
        @values[field.sequence]
      end
    end  
  end
end
