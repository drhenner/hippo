module Hippo::TransactionSets
  module HIPAA_837

    class L2440 < Hippo::TransactionSets::Base
      loop_name 'L2440'    #Form Identification Code

      #Form Identification Code
      segment Hippo::Segments::LQ,
                :name           => 'Form Identification Code',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5510

      #Supporting Documentation
      segment Hippo::Segments::FRM,
                :name           => 'Supporting Documentation',
                :minimum        => 1,
                :maximum        => 99,
                :position       => 5520

    end
  end
end
