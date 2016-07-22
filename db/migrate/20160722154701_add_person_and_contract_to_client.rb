class AddPersonAndContractToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :person_id, :integer
    add_column :clients, :contract_id, :integer
  end
end
