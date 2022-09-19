class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name

      t.timestamps
      t.belongs_to :department, foreign_key: :true
    end
  end
end
