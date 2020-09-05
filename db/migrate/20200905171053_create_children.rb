class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :name
      t.string :user_name
      t.integer :age

      t.timestamps
    end
  end
end
