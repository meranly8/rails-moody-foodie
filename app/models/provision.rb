class Provision < ApplicationRecord
    validates :name, presence: true
    validates :provision_type, presence: true
end
