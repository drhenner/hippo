module Hippo::TransactionSets
  module HIPAA_270

    class L2110D < Hippo::TransactionSets::Base
      loop_name 'L2110D'    #Dependent Eligibility Or Benefit Inquiry

      segment Hippo::Segments::EQ,
                :position       => 14

      segment Hippo::Segments::III,
                :position       => 15

      segment Hippo::Segments::REF,
                :position       => 16

      segment Hippo::Segments::DTP,
                :position       => 17

    end
  end
end
