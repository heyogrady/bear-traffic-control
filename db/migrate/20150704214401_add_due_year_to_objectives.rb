class AddDueYearToObjectives < ActiveRecord::Migration

  def change
    add_column :objectives, :due_year, :integer, null: false
    add_column :objectives, :due_quarter, :integer, null: false
    remove_column :objectives, :period
  end

end
