module Hippo::TransactionSets
  module HIPAA_837

    class L2330A < Hippo::TransactionSets::Base
      loop_name 'L2330A'    #Other Subscriber Name

      #Other Subscriber Name
      segment Hippo::Segments::NM1,
                :name           => 'Other Subscriber Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3250

      #Other Subscriber Address
      segment Hippo::Segments::N3,
                :name           => 'Other Subscriber Address',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3320

      #Other Subscriber City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Other Subscriber City, State, ZIP Code',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3400

      #Other Subscriber Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Other Subscriber Secondary Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3550

    end
  end
end
