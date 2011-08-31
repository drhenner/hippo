module Hippo::TransactionSets
  module HIPAA_270

    class L2110C < Hippo::TransactionSets::Base
      loop_name 'L2110C'    #Subscriber Eligibility Or Benefit Inquiry

      segment Hippo::Segments::EQ,
                :position       => 13

      segment Hippo::Segments::AMT,
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
