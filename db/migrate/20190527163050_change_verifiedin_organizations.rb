class ChangeVerifiedinOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :verified
    add_column :organizations, :verified, :boolean, :default => false
  end
end
