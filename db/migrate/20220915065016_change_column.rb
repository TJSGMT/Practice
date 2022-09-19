class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :authors, :Created_date, :datetime
  end
end
