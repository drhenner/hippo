module Hippo::TransactionSets
  module HIPAA_837

    class L2010BA < Hippo::TransactionSets::Base
      loop_name 'L2010BA'    #Subscriber Name

      #Subscriber Name
      segment Hippo::Segments::NM1,
                :name           => 'Subscriber Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 150,
                :defaults => {
                  'NM101' => 'IL'
                }

      #Subscriber Address
      segment Hippo::Segments::N3,
                :name           => 'Subscriber Address',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 250

      #Subscriber City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Subscriber City, State, ZIP Code',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 300

      #Subscriber Demographic Information
      segment Hippo::Segments::DMG,
                :name           => 'Subscriber Demographic Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 320,
                :defaults => {
                  'DMG01' => 'D8'
                }

      #Subscriber Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Subscriber Secondary Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 350,
                :defaults => {
                  'REF01' => 'SY'
                }

      #Property and Casualty Claim Number
      segment Hippo::Segments::REF,
                :name           => 'Property and Casualty Claim Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 360,
                :defaults => {
                  'REF01' => 'Y4'
                }

      #Property and Casualty Subscriber Contact Information
      segment Hippo::Segments::PER,
                :name           => 'Property and Casualty Subscriber Contact Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 400,
                :defaults => {
                  'PER01' => 'IC',
                  'PER03' => 'TE'
                }

    end
  end
end
