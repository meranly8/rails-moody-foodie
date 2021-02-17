class Entry < ApplicationRecord
    validates :date, presence: true

    belongs_to :user
    has_many :entry_provisions
    has_many :provisions, through: :entry_provisions
end
