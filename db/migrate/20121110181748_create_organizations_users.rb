class CreateOrganizationsUsers < ActiveRecord::Migration
  def change
    create_table :organizations_users, id: false do |t|
      t.references :organization, :user
      t.string :role, default: "member" 
    end
    add_index :organizations_users, [:organization_id, :user_id] 
  end
end
