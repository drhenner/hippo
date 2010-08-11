module Hippo::Segments
  class ST
    include Hippo::Segments::Base 

    def self.identifier
      'ST'
    end

    def self.fields
      [
        { :sequence => 1,
          :name     => 'Transaction Set Identifier Code', 
          :datatype => :list, 
          :options  => ['835']}, 
        { :sequence => 2,
          :name => 'Transaction Set Control Number', 
          :datatype => :alpha_numeric}
      ]
    end
  end
end
