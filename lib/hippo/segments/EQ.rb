module Hippo::Segments
  class EQ < Base

    segment_identifier  'EQ'

    field   :name     => 'ServiceTypeCode',
      :datatype => :list,
      :list     => ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','A0','A1','A2','A3','A4','A5','A6','A7','A8','A9','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AQ','AR','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM','BN','BP','BQ','BR','BS'],
      :required => true

    composite_field 'CompositeMedicalProcedureIdentifier' do
      field   :name      => 'ProductServiceIDQualifier',
              :datatype  => :alpha_numeric,
              :minimum   => 2,
              :maximum   => 2,
              :required  => true

      field   :name      => 'ProductServiceID',
              :datatype  => :alpha_numeric,
              :minimum   => 1,
              :maximum   => 48,
              :require   => true

      field   :name      => 'ProcedureModifier1',
              :datatype  => :alpha_numeric,
              :minimum   => 2,
              :maximum   => 2,
              :require   => false

      field   :name      => 'ProcedureModifier2',
              :datatype  => :alpha_numeric,
              :minimum   => 2,
              :maximum   => 2,
              :require   => false

      field   :name      => 'ProcedureModifier3',
              :datatype  => :alpha_numeric,
              :minimum   => 2,
              :maximum   => 2,
              :require   => false

      field   :name      => 'ProcedureModifier4',
              :datatype  => :alpha_numeric,
              :minimum   => 2,
              :maximum   => 2,
              :require   => false

      field   :name      => 'Description',
              :datatype  => :alpha_numeric,
              :minimum   => 1,
              :maximum   => 80,
              :require   => false

    end

    field   :name     => 'CoverageLevelCode',
      :datatype => :list,
      :list => %w{CHD DEP ECH EMP ESP FAM IND SPC SPO},
      :required => false

    field   :name     => 'InsuranceTypeCode',
      :datatype => :list,
      :list     => %w{AP C1 CO GP HM HN IP MA MB MC},
      :required => false
  end
end
