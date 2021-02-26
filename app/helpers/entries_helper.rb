module EntriesHelper
    
    def display_edit_mood_link(entry)
        if authorized_for?(entry)
            button_to "Change Mood", edit_entry_path(entry), method: :get
        end
    end
    
    def display_new_entry_link(entry)
        if authorized_for?(entry)
            button_to "New Entry Provision", new_entry_entry_provision_path(entry), method: :get
        end
    end

    def display_delete_entry_link(entry)
        if authorized_for?(entry)
            button_to "Delete Entry", entry_path(entry), method: :delete
        end
    end

    def display_edit_entry_provision_link(entry, ep)
        if authorized_for?(entry)
            link_to "Edit", entry_provision_path(ep), method: :get
        end
    end

    def display_delete_entry_provision_link(entry, ep)
        if authorized_for?(entry)
            link_to "Delete", entry_provision_path(ep), method: :delete
        end
    end
end
