class Client < ApplicationRecord
  has_many :notifications, dependent: :destroy
  has_many :positions, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
