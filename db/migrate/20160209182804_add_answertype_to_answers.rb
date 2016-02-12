class AddAnswertypeToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :answer_type, :string
  end
end
