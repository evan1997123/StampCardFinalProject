class AddEventTitleToStamps < ActiveRecord::Migration[5.2]
  def change
  	add_column :stamps, :EventTitle, :string
  end
end
