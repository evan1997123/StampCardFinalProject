class AddAchievementToStamps < ActiveRecord::Migration[5.2]
  def change
    add_reference :stamps, :achievement, foreign_key: true
  end
end
