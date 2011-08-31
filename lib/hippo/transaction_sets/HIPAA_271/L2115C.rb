module Hippo::TransactionSets
  module HIPAA_271

    class L2115C < Hippo::TransactionSets::Base
      loop_name 'L2115C'    #Subscriber Eligibility Or Benefit Additional Information

      segment Hippo::Segments::III,
                :position       => 21

    end
  end
end
