class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.string :type
      t.integer :stakeholder_id
      t.integer :report_id

      t.timestamps null: false
    end
  end
end
