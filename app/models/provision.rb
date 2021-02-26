class Provision < ApplicationRecord
    validates :name, :provision_type, presence: true
    validates :name, uniqueness: true

    has_many :entry_provisions
    has_many :entries, through: :entry_provisions

    scope :order_by_name, -> {order(:name)}

end
