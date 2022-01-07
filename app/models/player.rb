class Player < ApplicationRecord
  belongs_to :playground
  has_many :positions
end
