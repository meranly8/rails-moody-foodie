module EntryProvisionsHelper
    def display_header(entry)
        tag.h1("#{entry.short_date} Provisions")
    end

    def amount_and_unit
        "#{self.amount} #{self.unit}"
    end
end
