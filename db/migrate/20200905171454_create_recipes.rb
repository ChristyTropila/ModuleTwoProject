class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :rewarded_points
      t.belongs_to :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
