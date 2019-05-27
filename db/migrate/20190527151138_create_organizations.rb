class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :category
      t.string :url
      t.text :description
      t.string :photo_url
      t.string :verified
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
