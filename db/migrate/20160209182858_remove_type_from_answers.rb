class RemoveTypeFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :type, :string
  end
end
