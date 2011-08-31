module Hippo::TransactionSets
  module HIPAA_837

    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'    #Patient Hierarchical Loop

      segment Hippo::Segments::PAT,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 6

      #Patient Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010CA,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'QC'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 7

      #Claim Information
      loop    Hippo::TransactionSets::HIPAA_837::L2300,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 1,
                :maximum        => 100,
                :position       => 8

    end
  end
end
