class CreateUserRolesRelation < ActiveRecord::Migration[5.0]
  def change
    create_table :roles_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :role, index: true
    end
  end
end
