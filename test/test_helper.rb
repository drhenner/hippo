require 'rubygems'
gem 'minitest'
require 'minitest/autorun'

require_relative '../lib/hippo'
require 'pp'

module Hippo::Segments
  class TestSimpleSegment < Hippo::Segments::Base
    segment_identifier 'TSS'

    field :name => 'Field1'
    field :name => 'Field2'
    field :name => 'Field3'
    field :name => 'Field4'
    field :name => 'CommonName'
    field :name => 'CommonName'
  end

  class TestCompoundSegment < Hippo::Segments::Base
    segment_identifier 'TCS'

    composite_field 'CompositeField' do
      field :name => 'Field1'
      field :name => 'Field2'
      field :name => 'Field3'
      field :name => 'CompositeCommonName'
    end

    composite_field 'CompositeField' do
      field :name => 'Field4'
      field :name => 'Field5'
      field :name => 'Field6'
      field :name => 'CompositeCommonName'
    end

    field :name => 'Field7'
  end
end

module Hippo::TransactionSets
  module Test
    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::TestSimpleSegment,
                :name           => 'Test Simple Segment #1',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 50,
                :defaults => {
                  'TSS01' => 'Blah'
                }

      segment Hippo::Segments::TestCompoundSegment,
                :name           => 'Test Compound Segment #2',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100,
                :defaults => {
                  'Field7' => 'Preset Field 7'
                }

      segment Hippo::Segments::TestSimpleSegment,
                :name           => 'Test Simple Segment #3',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 50,
                :defaults => {
                  'TSS01' => 'Last Segment'
                }
    end
  end
end
