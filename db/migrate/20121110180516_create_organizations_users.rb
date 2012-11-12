class CreateOrganizationsUsers < ActiveRecord::Migration
  def up
    create_table :organizations_users, id: false do |t|
      t.references :organization, :user
      add_index :organizations_users, [:organization_id, :user_id]
    end
  end

  def down
  end
end
