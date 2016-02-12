class Answer < ActiveRecord::Base
  belongs_to :stakeholder
  belongs_to :report
end
