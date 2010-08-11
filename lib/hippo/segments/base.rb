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

    attr_accessor :values

    def initialize
      @values = {}
    end

    def get_field_name(text)
      text.to_s.gsub(' ','').gsub('=','')
    end
    
    def get_field(field)
      if field.class == Fixnum || field =~ /\d+/
        @fields[field.to_i - 1]
      else
        self.class.fields.select{|f| f[:name] == get_field_name(field).to_s}.first
      end
    end

    def to_s
      output = self.class.identifier

      self.class.fields.each do |field|
        output += Hippo::FieldSeparator + @values[field[:sequence]].to_s
      end

      output += Hippo::SegmentSeparator
    end
    
    def self.field(field)
      self.fields << field.merge(:sequence => self.fields.length + 1)
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
        @values[field[:sequence]] = args[0]
      else
        @values[field[:sequence]] 
      end
    end  
  end
end
