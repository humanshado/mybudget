class Income < ApplicationRecord
    belongs_to :user

    # validates :entry_date, :description, :inflow, presence: true
    # validates :description, length: { minimum: 2 }
    # validates :inflow, numericality: { greater_than: 0 }
end
