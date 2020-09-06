class AddForeignKeyKitchenTool < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :kitchen_tool_id, :bigint, :null => true
  end
end
