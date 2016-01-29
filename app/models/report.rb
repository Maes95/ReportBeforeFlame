class Report < ActiveRecord::Base
  belongs_to :stakeholder

  validates :content, length: {
    minimum: 15,
    #maximum: 1400,
    tokenizer: lambda { |str| str.split(/\s+/) },
    too_short: "must have at least %{count} words, give us more details",
    too_long: "must have at most %{count} words"
  }

  validates :title, length: {
    minimum: 1,
    maximum: 15,
    tokenizer: lambda { |str| str.split(/\s+/) },
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }

  after_validation :ensure_report_has_created_at

 protected
   def ensure_report_has_created_at
     if created_at.nil?
       self.created_at = Time.now unless created_at.blank?
     end
   end

end
