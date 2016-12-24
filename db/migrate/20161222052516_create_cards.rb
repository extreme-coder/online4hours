class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :category
      t.boolean :is_used

      t.timestamps null: false
    end
  end
end
