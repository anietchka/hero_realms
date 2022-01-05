class Card < ApplicationRecord
  TYPE = %w[Objet Action Champion]
  COLOR = %w[Aucune Verte Rouge Bleue Jaune]

  validates :name, presence: true
  validates :collection, inclusion: { in: TYPE }
  validates :color, inclusion: { in: COLOR}
  belongs_to :user
end
