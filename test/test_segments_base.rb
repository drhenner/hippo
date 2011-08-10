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
    seg.EntityIdentifierCode1 = '1P'
    seg.EntityTypeQualifier = '1'
    seg.NameLastOrOrganizationName = 'JACKSON'
    seg.NameFirst = 'ROBERT'
    seg.NameMiddle = 'W'
    seg.IdentificationCodeQualifier = '34'
    seg.IdentificationCode = '123456789'

    assert_equal 'NM1*1P*1*JACKSON*ROBERT*W***34*123456789~', seg.to_s
  end

  def test_compound_segment
    seg = Hippo::Segments::EQ.new
    seg.ProductServiceIDQualifier = 'CJ'
    seg.ProductServiceID = '00100'
    seg.ProcedureModifier1 = 'AA'

    assert_equal 'EQ**CJ:00100:AA~', seg.to_s
  end
end