class CreateStamps < ActiveRecord::Migration[5.2]
  def change
    create_table :stamps do |t|
      t.string :name
      t.string :category
	  t.references :stampcard, foreign_key: true

      t.timestamps
    end
  end
end
