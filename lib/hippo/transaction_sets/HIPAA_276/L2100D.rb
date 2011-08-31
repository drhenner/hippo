module Hippo::TransactionSets
  module HIPAA_276

    class L2100D < Hippo::TransactionSets::Base
      loop_name 'L2100D'    #Subscriber Name

      segment Hippo::Segments::NM1,
                :position       => 6

    end
  end
end
