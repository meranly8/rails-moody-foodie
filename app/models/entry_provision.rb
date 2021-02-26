class EntryProvision < ApplicationRecord
    belongs_to :entry
    belongs_to :provision

    validates :amount, :unit, presence: true
    validates :amount, numericality: {greater_than: 0}
    
    def provision_attributes=(attr)
        if !attr[:name].blank?
            self.provision = Provision.find_or_create_by(name: attr[:name]) do |p|
                p.provision_type = attr[:provision_type]
                p.approx_cals_per_serving = attr[:approx_cals_per_serving]
            end
        end
    end

    def amount_and_unit
        "#{self.amount} #{self.unit}"
    end
end