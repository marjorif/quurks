class CreateTraits < ActiveRecord::Migration[6.0]
  def change
    create_table :traits do |t|
      t.string :name
      t.string :description
      t.integer :price_hour
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
