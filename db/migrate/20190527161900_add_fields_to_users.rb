class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :dob, :datetime
    add_column :users, :city, :string
    add_column :users, :phone, :string
    add_column :users, :interests, :text
    add_column :users, :bio, :text
    add_column :users, :photo, :string
  end
end
