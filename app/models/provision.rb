class Provision < ApplicationRecord
    validates :name, :provision_type, :approx_cals_per_serving, presence: true
    validates :name, uniqueness: true
    validates :approx_cals_per_serving, numericality: {greater_than: -1}

    has_many :entry_provisions
    has_many :entries, through: :entry_provisions

    scope :order_by_name, -> {order(:name)}

end
