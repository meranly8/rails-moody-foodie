module EntryProvisionsHelper

    def display_cal_details_link(entry)
        if entry.entry_provisions.count == 0
            "Add a New Entry Provision!"
        else
            link_to "Entry Calorie Details", entry_entry_provisions_path(entry)
        end
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
    
end
