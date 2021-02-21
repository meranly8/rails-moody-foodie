class Entry < ApplicationRecord
    validates :date, presence: true

    belongs_to :user
    has_many :entry_provisions, dependent: :delete_all
    has_many :provisions, through: :entry_provisions

    def date_and_mood
        "#{self.date.strftime("%A, %d %b %Y")} - #{self.end_of_day_mood}"
    end

    def short_date
        self.date.strftime("%m/%d/%Y")
    end

    def self.order_by_date
        self.order(date: :desc)
    end

end