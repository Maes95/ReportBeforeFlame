class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.text :content
      t.string :priority
      t.integer :stakeholder_id
      t.string :report_type
    end
  end
end
