require 'rubygems'
require 'nokogiri'
require 'hippo'
require 'pp'

XML_DIR = '/Users/rjackson/Source/ruby/X12-1.1.0/misc'
SEGMENT_DIR = '/Users/rjackson/Source/ruby/hippo/lib/hippo/segments/'

def get_field_options(table)
  return nil unless File.exists?(File.join(XML_DIR, table.to_s + '.xml'))

  output = []
  xml = Nokogiri::XML(File.read(File.join(XML_DIR, table + '.xml')))

  xml.xpath('/Table/Entry').each do |item|
    output << item['name']
  end
 
  output
end

def get_field_string
  output = ''

  @fields.each do |field|
    output += "    field   :name     => '" + field.name + "',\n"
    output += "            :datatype => :" + field.datatype.to_s + ",\n"
    
    if field.datatype == :list
      output += "            :list     => [ " + field.options.map{|s| "'#{s}'" }.join(",") + "]\n"
    else
      output += "            :minimum  => " + field.minimum + ",\n"
      output += "            :maximum  => " + field.maximum + ",\n"
    end
    
    output += "            :required => " + field.required.to_s + "\n"

    output += "\n"
  end
  
  output
end

def write_class_file
  # DO STUFF
  output_file = File.new(File.join(SEGMENT_DIR, @segment + '.rb'),'w')

  class_data = <<EOF
module Hippo::Segments
  class #{@segment} < Base

    segment_identifier  '#{@segment}'

#{get_field_string}  end
end
EOF

  output_file.write class_data
  output_file.flush
  output_file.close
end

def get_fields(segment)
  @fields ||= []
  xml = Nokogiri::XML(File.read(File.join(XML_DIR, segment + '.xml')))

  xml.xpath('/Segment/Field').each do |field|
    f = Hippo::Field.new
    f.sequence  = @fields.length + 1
    f.name      = field['name']
    f.datatype  = case 
                  when field['validation']
                    :list
                  when field['type'] == 'double'
                    :numeric
                  else
                    :alpha_numeric
                  end
                    
    f.minimum   = field['min']
    f.maximum   = field['max']
    f.required  = field['required'].nil?
    f.options   = get_field_options(field['validation'])
    #f.options = field[:options]
    #f.restrictions = field[:restrictions]
    
    @fields << f
  end

  @fields
end

if __FILE__ == $0
  @segment = ARGV[0]
  @fields = get_fields(@segment)
  
  write_class_file
end
