class Provision < ApplicationRecord
    validates :name, presence: true
    validates :provision_type, presence: true

    has_many :entry_provisions
    has_many :entries, through: :entry_provisions
end
