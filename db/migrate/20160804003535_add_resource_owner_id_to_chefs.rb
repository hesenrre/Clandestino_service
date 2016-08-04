class AddResourceOwnerIdToChefs < ActiveRecord::Migration[5.0]
  def change
    add_column :chefs, :resource_owner_id, :integer
  end
end
