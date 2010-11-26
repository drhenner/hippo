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

      def field(field)
        f = Hippo::Field.new
        f.sequence = fields.length + 1
        f.name = field[:name]
        f.datatype = field[:datatype]
        f.options = field[:options]
        f.restrictions = field[:restrictions]
        f.separator = field[:separator] || @default_separator || Hippo::FieldSeparator

        if @composite_block
          f.sequence = fields.last.length + 1
          fields.last << f
        else
          fields << f
        end
      end

      def composite_field(field_name)
        @composite_block = true
        @default_separator = Hippo::CompositeSeparator
        fields << []
        yield
        @default_separator = Hippo::FieldSeparator
        @composite_block = false
      end

      def segment_identifier(id)
        @identifier = id
      end

      #def grouped_fields
      #  return @grouped_fields unless @grouped_fields.nil?

      #  @grouped_fields = []
      #  current_composite = []

      #  @fields.each do |f|
      #    if f.separator == Hippo::FieldSeparator

      #      unless current_composite.empty?
      #        @grouped_fields << current_composite
      #        current_composite = []
      #      end

      #      @grouped_fields << f
      #    else
      #      current_composite << f
      #    end
      #  end

      #  unless current_composite.empty?
      #    @grouped_fields << current_composite
      #    current_composite = []
      #  end
      #  
      #  return @grouped_fields
      #end
    end
    
    attr_accessor :values
    
    def values
      @values ||= {}
    end

    def get_field_name(text)
      text.to_s.gsub(' ','').gsub('=','')
    end
    
    def get_field(field)
      if field.class == Numeric || field =~ /\A#{self.class.identifier}(?:(\d+)(?:_(\d+)){0,1})\z/
        self.class.fields[$1.to_i - 1]
      else
        self.class.fields.select{|f| f.name == get_field_name(field).to_s}.first
      end
    end

    def to_s
      output = self.class.identifier + Hippo::FieldSeparator

      self.class.fields.each_with_index do |field, index|
        if field.class == Array
          field.each do |comp_field|
            output += @values[index][comp_field.sequence].to_s + comp_field.separator
          end
        else
          output += @values[field.sequence].to_s + field.separator
        end
      end

      # remove extra field separators that aren't needed
      unless self.class.identifier == 'ISA'
        output = output.gsub(/:{2,}/,'*').gsub(/:\*/,'*')
      end

      output += Hippo::SegmentSeparator
      output = output.gsub(/\*+~/,'~')
    end
    

    def identifier
      self.class.identifier
    end

    def method_missing(method_name, *args) 
      field = get_field(get_field_name(method_name))

      if field.nil? 
        puts method_name, * args
      end
      
      if method_name.to_s =~ /=\z/
        self.values[field.sequence] = args[0]
      else
        self.values[field.sequence]
      end
    end  
  end
end
