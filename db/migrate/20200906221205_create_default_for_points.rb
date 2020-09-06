class CreateDefaultForPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :default_for_points do |t|
      change_column :recipes, :rewarded_points, :integer, :default => 0
    end
  end
end
