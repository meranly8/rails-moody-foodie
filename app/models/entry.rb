class Entry < ApplicationRecord
    validates :date, presence: true
    validates :date, uniqueness: {scope: :user_id}

    belongs_to :user
    has_many :entry_provisions, dependent: :delete_all
    has_many :provisions, through: :entry_provisions

    scope :order_by_date, -> {order(date: :desc)}
    scope :order_by_mood, -> {order(:end_of_day_mood)}
    
end