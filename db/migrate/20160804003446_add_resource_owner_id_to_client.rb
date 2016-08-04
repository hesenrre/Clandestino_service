class AddResourceOwnerIdToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :resource_owner_id, :integer
  end
end
