class Expense < ApplicationRecord
    belongs_to :user

    # validates :entry_date, :description, :outflow, presence: true
    # validates :description, length: { minimum: 2 }
    # validates :outflow, numericality: { greater_than: 0 }
end
