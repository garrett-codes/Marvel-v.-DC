class Game < ApplicationRecord
  belongs_to :character
  belongs_to :user
end
