module Hippo::TransactionSets
  module HIPAA_837

    class L2000B < Hippo::TransactionSets::Base
      loop_name 'L2000B'    #Subscriber Hierarchical Level

      segment Hippo::Segments::HL,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 5

      segment Hippo::Segments::SBR,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 6

      segment Hippo::Segments::PAT,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 7

      #Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010BA,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'IL'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 8

      #Payer Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010BB,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'PR'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 9

      #Claim Information
      loop    Hippo::TransactionSets::HIPAA_837::L2300,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 1,
                :maximum        => 100,
                :position       => 10

    end
  end
end
