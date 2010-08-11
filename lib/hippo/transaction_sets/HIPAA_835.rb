module Hippo::TransactionSets
  class HIPAA_835
    include Hippo::TransactionSets::Base 

    def initialize
      @segments = [
        Hippo::Segments::ST.new,
        Hippo::Segments::BPR.new
      ]
    end
  end
end
