module Hippo::Segments
  class SBR < Base

    segment_identifier  'SBR'

    field   :name     => 'PayerResponsibilitySequenceNumberCode',
            :datatype => :list,
            :list     => [ 'N','O','P','S','T','U']
            :required => true

    field   :name     => 'IndividualRelationshipCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','36','37','38','39','40','41','43','45','46','47','48','49','50','51','52','53','55','56','57','58','59','60','61','62','63','64','65','66','67','68','70','71','72','73','74','75','76','78','79','80','81','82','83','84','86','87','88','90','91','92','93','94','95','96','97','98','99','A1','A2','A3','A4','A5','A6','A7','A8','A9','B1','B2','B3','B4','B5','B6','B7','B8','B9','C1','C2','C3','C4','C5','C8','C9','D1','D2','D3','D4','D5','D6','D7','D8','D9','E1','E2','E3','E4','E5','E6','E7','E8','E9','F1','F2','F3','F6','F7','F8','F9','G2','G3','G4','G5','G6','G7','G8','G9','H1','H4','N1','OT','ZZ']
            :required => false

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'Name',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 60,
            :required => false

    field   :name     => 'InsuranceTypeCode',
            :datatype => :list,
            :list     => [ 'D','E','U','12','13','14','15','16','41','42','43','47','AP','C1','CO','CP','DB','EP','FF','GP','HM','HN','HS','IN','IP','LC','LD','LI','LT','MA','MB','MC','MH','MI','MP','OT','PE','PL','PP','PR','PS','QM','RP','SP','TF','WC','WU']
            :required => false

    field   :name     => 'CoordinationOfBenefitsCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8','9']
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode',
            :datatype => :list,
            :list     => [ 'N','U','W','Y']
            :required => false

    field   :name     => 'EmploymentStatusCode',
            :datatype => :list,
            :list     => [ '00','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AO','AP','AQ','AS','AU','CA','CC','CO','CT','DC','DD','DI','DQ','DR','DS','EO','FA','FB','FC','FO','FT','HD','IA','IR','L1','L2','L3','L4','L5','L6','L7','LA','LE','LF','LM','LO','LS','LU','LW','LX','NE','OS','OT','PA','PC','PE','PM','PN','PR','PT','PV','PW','RA','RB','RC','RD','RE','RI','RM','RP','RR','RT','RU','RW','SA','SB','SE','SL','SU','TE','TF','TM','TN','TP','TR','UK','VO','XD','ZZ']
            :required => false

    field   :name     => 'ClaimFilingIndicatorCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','31','32','33','AM','BL','CH','CI','CN','DS','FI','HM','LI','LM','MA','MB','MC','MH','OF','SA','TV','VA','WB','WC','WD','WE','ZZ']
            :required => false

  end
end
