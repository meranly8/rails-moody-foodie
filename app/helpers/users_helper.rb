module UsersHelper
    def display_new_entry_link(user)
        if user == current_user
            button_to "New Entry", new_entry_path, method: :get
        end
    end

end