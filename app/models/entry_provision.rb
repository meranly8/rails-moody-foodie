class EntryProvision < ApplicationRecord
    belongs_to :entry
    belongs_to :provision

    validates :amount, :unit, presence: true
    validates :amount, numericality: {greater_than: 0}

    def amount_and_unit
        "#{self.amount} #{self.unit}"
    end

    def self.order_by_created
        self.order(:created_at)
    end
end