class EntryProvision < ApplicationRecord
    belongs_to :entry
    belongs_to :provision

    validates :amount, presence: true
    validates :amount, numericality: {greater_than: 0}
    validates :unit, presence: true

    def amount_and_unit
        "#{self.amount} #{self.unit}"
    end

    def self.order_by_created
        self.order(:created_at)
    end
end