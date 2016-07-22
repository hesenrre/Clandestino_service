class AddPersonAndContractToChef < ActiveRecord::Migration[5.0]
  def change
    add_column :chefs, :person_id, :integer
    add_column :chefs, :contract_id, :integer
  end
end
