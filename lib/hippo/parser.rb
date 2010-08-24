require 'pp'
require 'hippo'

module Hippo
  class Parser
    attr_accessor :raw_data, :segments, :output

    def segments
      @segments ||= []
    end

    def read_file(filename)
      @raw_data = File.read(filename)
    end

    def populate_segments

      # iterate through each line of the input data
      # and create Hippo::Segments for each segment
      @raw_data.split(Hippo::SegmentSeparator).each do |line|

        # get rid of any newlines or other bizarre spacing
        # this may cause an issue with any transactions with
        # some sort of whitespace delimiter
        line = line.strip
        next if line.nil? || line.empty?

        # each field is separated by either * or : depending 
        # if it is a composite field.  we treat them the same
        fields = line.split(Hippo::FieldSeparator)

        # grab the first field as it is the segment identifier 
        segment_identifier = fields.shift

        # create a new segment object based on the identifier
        segment = Hippo::Segments.const_get(segment_identifier.upcase).new
        
        # populate each field from the original input
        fields.each_with_index do |value, index|
          field = segment.class.fields[index]
         
          # if the field is an array that means it is a
          # composite field
          if field.class == Array
            composite_fields = value.split(Hippo::CompositeSeparator)
            
            # initialize the values hash with a hash for this
            # composite field
            segment.values[index] = {}

            # iterate through each value present in the composite field
            # and save them to the appropriate sequence in the values 
            # hash
            composite_fields.each_with_index do |comp_value, comp_index|
              segment.values[index][field[comp_index].sequence] = comp_value
            end
          else
            segment.values[field.sequence] = value
          end
        end
        
        # save the newly created segment to the segments accessor
        segments << segment
      end
    end

    def parse_segments
      @segments.each do |segment|
        puts segment.to_s
      end
    end

    def parse(filename)
      read_file(filename)
      populate_segments
      parse_segments
    end
  end
end

if __FILE__ == $0
  parser = Hippo::Parser.new
  parser.parse(ARGV[0])

  output_string = ''
  parser.segments.each do |seg|
    output_string += seg.to_s
  end

  puts ''
  puts output_string
end
