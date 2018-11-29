class AddImageToStamp < ActiveRecord::Migration[5.2]
  def change
    add_column :stamps, :image, :string
  end
end
