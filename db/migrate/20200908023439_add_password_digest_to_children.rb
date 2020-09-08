class AddPasswordDigestToChildren < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :password_digest, :string
  end
end
