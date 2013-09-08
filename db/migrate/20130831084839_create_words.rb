class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :user_id
      t.string :text
      t.integer :color_id

      t.timestamps
    end
    add_index :words, :user_id
    add_index :words, :text
    add_index :words, :created_at
  end
end
