class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :book_name
      t.string :Created_date

      t.timestamps
    end
  end
end
