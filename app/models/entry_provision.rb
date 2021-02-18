class EntryProvision < ApplicationRecord
    belongs_to :entry
    belongs_to :provision

    validates :amount, presence: true
    validates :amount, numericality: {greater_than: 0}
    validates :unit, presence: true
end
