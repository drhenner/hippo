module Hippo::TransactionSets
  module HIPAA_835

    class L2000 < Hippo::TransactionSets::Base
      loop_name 'L2000'    #Header Number

      #Header Number
      segment Hippo::Segments::LX,
                :name           => 'Header Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 30

      #Provider Summary Information
      segment Hippo::Segments::TS3,
                :name           => 'Provider Summary Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 50

      #Provider Supplemental Summary Information
      segment Hippo::Segments::TS2,
                :name           => 'Provider Supplemental Summary Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 70

      #Claim Payment Information
      loop    Hippo::TransactionSets::HIPAA_837::L2100,
                :name           => 'Claim Payment Information',
                :minimum        => 1,
                :maximum        => nil,
                :position       => 100

    end
  end
end
