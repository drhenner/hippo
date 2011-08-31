module Hippo::TransactionSets
  module HIPAA_271

    class L2115D < Hippo::TransactionSets::Base
      loop_name 'L2115D'    #Dependent Eligibility Or Benefit Additional Information

      segment Hippo::Segments::III,
                :position       => 22

    end
  end
end
