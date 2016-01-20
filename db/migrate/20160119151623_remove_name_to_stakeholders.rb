class RemoveNameToStakeholders < ActiveRecord::Migration
  def change
    remove_column :stakeholders, :name, :string
  end
end
