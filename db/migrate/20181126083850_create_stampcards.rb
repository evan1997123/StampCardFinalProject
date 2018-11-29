class CreateStampcards < ActiveRecord::Migration[5.2]
  def change
    create_table :stampcards do |t|
      t.references :user, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
