class Report < ActiveRecord::Base
  belongs_to :stakeholder

  before_validation :ensure_report_has_created_at

 protected
   def ensure_report_has_created_at
     if created_at.nil?
       self.created_at = Time.now unless created_at.blank?
     end
   end
end
