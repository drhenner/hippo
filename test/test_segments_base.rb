require_relative './test_helper'

class TestSegmentsBase < MiniTest::Unit::TestCase
  def setup; end;
  def teardown; end;

  def test_empty_segment
    seg = Hippo::Segments::NM1.new

    assert_equal 'NM1~', seg.to_s
  end

  def test_basic_populated_segment
    seg = Hippo::Segments::NM1.new
    seg.EntityIdentifierCode = '1P'
    seg.EntityTypeQualifier = '1'
    seg.NameLastOrOrganizationName = 'JACKSON'
    seg.NameFirst = 'ROBERT'
    seg.NameMiddle = 'W'
    seg.IdentificationCodeQualifier = '34'
    seg.IdentificationCode = '123456789'

    assert_equal 'NM1*1P*1*JACKSON*ROBERT*W***34*123456789~', seg.to_s
  end

  def test_compound_segment
    seg = Hippo::Segments::HI.new
    seg.CodeListQualifierCode  = 'BK'
    seg.IndustryCode           = '0340'

    assert_equal 'HI*BK:0340~', seg.to_s
  end

  def test_compound_segment_with_empty_initial_fields
    seg = Hippo::Segments::HI.new
    seg.IndustryCode           = '0340'

    assert_equal 'HI*:0340~', seg.to_s
  end

  def test_assign_invalid_field_throws_error
    assert_raises(Hippo::Exceptions::InvalidField) do
      seg = Hippo::Segments::NM1.new
      seg.InvalidField = 'Error should be raised.'
    end
  end
end
