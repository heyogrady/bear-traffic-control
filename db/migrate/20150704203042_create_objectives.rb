class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :name
      t.string :period
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
