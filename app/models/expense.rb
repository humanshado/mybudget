class Expense < ApplicationRecord
    belongs_to :user

    validates_presence_of :entry_date
    validates_presence_of :description
    validates_length_of :description, :minimum => 2
    validates_presence_of :outflow
    validates_numericality_of :outflow, :greater_than => 0

end
