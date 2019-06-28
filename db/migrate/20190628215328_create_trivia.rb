class CreateTrivia < ActiveRecord::Migration[5.2]
  def change
    create_table :trivia do |t|

      t.timestamps
    end
  end
end
