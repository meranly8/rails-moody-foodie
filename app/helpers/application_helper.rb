module ApplicationHelper
    def amount_and_unit
        "#{self.amount}  #{self.unit}"
    end

    def date_and_mood
        "#{self.date.strftime("%A %d %b %Y")} - #{self.end_of_day_mood}"
    end

    def short_date
        self.date.strftime("%m-%d-%Y")
    end
end
