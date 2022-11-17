class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :contact
      t.string :Bank_account_id
      t.string :team_name

      t.timestamps
      t.belongs_to :department, foreign_key: :true
      t.belongs_to :team, foreign_key: :true
      t.belongs_to :bank, foreign_key: :true
    end
  end
end
