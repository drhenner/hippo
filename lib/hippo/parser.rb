require 'pp'

module Hippo
  class Parser
    attr_accessor :raw_data, :segments, :output


    def read_file
      @raw_data = File.read(filename)
    end

    def populate_segments
      @raw_data.split(Hippo::SegmentSeparator).each do |line|
        line = line.strip
        fields = line.split(/\#{Hippo::FieldSeparator}|\#{Hippo::CompositeSeparator}/)

        segment = Hippo::Segments::ISA.new

      end
    end

    def parse_segments
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
  parser.parse(ARGV[1])
  puts parser.output.to_s
end
