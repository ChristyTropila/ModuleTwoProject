class UpdateForeignKey < ActiveRecord::Migration[6.0]
  def change
    change_column :instructions, :recipe_id, :bigint, :null => true
  end
end
