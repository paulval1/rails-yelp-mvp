class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  @allowed_types = %w[chinese italian japanese french belgian]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: @allowed_types }
end
