class Playground < ApplicationRecord
  has_many :players, dependent: :destroy
  has_many :positions, through: :players
end
