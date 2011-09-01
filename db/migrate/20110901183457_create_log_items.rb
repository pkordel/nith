class CreateLogItems < ActiveRecord::Migration
  def change
    create_table :log_items do |t|
      t.references :goal
      t.text :comment
      t.integer :score

      t.timestamps
    end
    add_index :log_items, :goal_id
  end
end
