class Income < ApplicationRecord
    belongs_to :user

    validates_presence_of :entry_date
    validates_presence_of :description
    validates_length_of :description, :minimum => 2
    validates_presence_of :inflow
    validates_numericality_of :inflow, :greater_than => 0

end
