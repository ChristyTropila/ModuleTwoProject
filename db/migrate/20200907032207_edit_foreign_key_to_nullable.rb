class EditForeignKeyToNullable < ActiveRecord::Migration[6.0]
  def change
    change_column :instructions, :food_item_id, :bigint, :null => true
    change_column :instructions, :kitchen_tool_id, :bigint, :null => true
  end
end
