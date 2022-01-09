class Position < ApplicationRecord
  belongs_to :player
  has_many :cards, dependent: :destroy
end
