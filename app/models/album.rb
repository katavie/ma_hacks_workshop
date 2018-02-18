class Album < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :duration_in_seconds, numericality: { only_integer: true }
end
