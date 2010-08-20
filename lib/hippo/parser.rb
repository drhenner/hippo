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
        fields = line.split(/#{'\\' + Hippo::FieldSeparator}|#{'\\' + Hippo::CompositeSeparator}/)

        # grab the first field as it is the segment identifier 
        segment_identifier = fields.shift

        # create a new segment object based on the identifier
        segment = Hippo::Segments.const_get(segment_identifier.upcase).new
        
        # populate each field from the original input
        fields.each_with_index do |value, index|
          segment.send(:"#{segment_identifier}#{index + 1}=", value)
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
