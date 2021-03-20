class Position < ApplicationRecord
  belongs_to :client

  validates :name, presence: true
  validates :value, presence: true
end
