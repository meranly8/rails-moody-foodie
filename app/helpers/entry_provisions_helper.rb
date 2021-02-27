module EntryProvisionsHelper
    def display_header(entry)
        tag.h1("#{entry.short_date} Provisions Calorie Details")
    end

    def amount_and_unit
        "#{self.amount} #{self.unit}"
    end

    def calorie_math(amount, cals)
        amount * cals
    end

    def calorie_total(entry_provisions)
        @cal_sum = 0
        entry_provisions.each do |ep|
            @cal_sum += ep.provision.approx_cals_per_serving
        end

        @cal_sum
    end
    
    def amount_and_unit
        "#{self.amount}  #{self.unit}"
    end
end
