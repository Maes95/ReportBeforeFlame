class AddCreateatToReports < ActiveRecord::Migration
  def change
    add_column :reports, :created_at, :datetime
  end
end
