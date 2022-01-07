class Playground < ApplicationRecord
  has_many :players
  has_many :positions, through: :players
end
