class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.date :date
      t.string :feedback
      t.integer :rating
      t.boolean :arrived, default: false

      t.timestamps
    end
  end
end
