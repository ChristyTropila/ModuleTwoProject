class AddForeignKeyToInstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :food_item_id, :bigint, :null => true
  end
  end 
