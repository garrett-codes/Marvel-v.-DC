class CreateTrivia < ActiveRecord::Migration[5.2]
  def change
    create_table :trivia do |t|
      t.string :question
      t.string :correct_answer
      t.string :wrong_answer1
      t.string :wrong_answer2
      t.belongs_to :character
      t.timestamps
    end
  end
end
