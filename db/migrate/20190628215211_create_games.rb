class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :character, foreign_key: true
      t.string :opponent
      t.timestamps
    end
  end
end
