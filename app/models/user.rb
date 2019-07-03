class User < ApplicationRecord
  has_many :games
  has_many :chracters, through: :games
end
