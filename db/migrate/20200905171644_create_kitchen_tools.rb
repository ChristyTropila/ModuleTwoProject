class CreateKitchenTools < ActiveRecord::Migration[6.0]
  def change
    create_table :kitchen_tools do |t|
      t.string :name
      t.string :description
    


      t.timestamps
    end
  end
end
