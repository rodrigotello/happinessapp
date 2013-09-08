class ColorTable < ActiveRecord::Migration
  def up
    create_table :colors do |t|
      t.string :name
      t.integer :code
  	end
  end

  def down
  end
end
