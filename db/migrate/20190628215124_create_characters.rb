class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :attack
      t.integer :speed
      t.integer :intellect
      t.string :team
      t.integer :health
      t.timestamps
    end
  end
end
