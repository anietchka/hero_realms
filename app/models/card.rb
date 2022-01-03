class Card < ApplicationRecord
  TYPE = %w[Objet Action Champion]
  COLOR = %w[Aucune Verte Rouge Bleue Jaune]
  has_one_attached :photo
  validates :name, presence: true
  validates :collection, inclusion: { in: TYPE }
  validates :color, inclusion: { in: COLOR}
end
