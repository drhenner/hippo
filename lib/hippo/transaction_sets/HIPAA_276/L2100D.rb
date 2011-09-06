module Hippo::TransactionSets
  module HIPAA_276

    class L2100D < Hippo::TransactionSets::Base
      loop_name 'L2100D'    #Subscriber Name

      #Subscriber Name
      segment Hippo::Segments::NM1,
                :name           => 'Subscriber Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

    end
  end
end
