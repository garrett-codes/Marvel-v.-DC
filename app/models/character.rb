class Character < ApplicationRecord
  has_many :games
  has_many :users, through: :games
  has_many :trivia

  def self.marvel
    self.where(:team => "Marvel").map {|character| character.name }
  end

  def self.dc
    self.where(:team => "DC").map {|character| character.name }
  end

  def overall
    overall = self.attack + self.speed + self.intellect
  end

  def self.overall_sort
    self.all.sort_by {|character| character.overall }
  end

  def self.overall_stat
    self.overall_sort.map {|character| "#{character.name} -- #{character.overall}"}
  end
end
