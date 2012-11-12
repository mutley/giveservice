class CreateOpportunitiesUsers < ActiveRecord::Migration
  def change
    create_table :opportunities_users, id: false do |t|
      t.references :opportunity, :user
    end
    add_index :opportunities_users, [:opportunity_id, :user_id]
  end
end
