class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_at
      t.datetime :ends_at
      t.string :address
      t.text :task
      t.string :title
      t.integer :spots
      t.string :category
      t.text :description
      t.string :photo
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
