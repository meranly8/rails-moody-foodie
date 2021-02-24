module ApplicationHelper
    def nav_bar
        if logged_in?
            link_to(current_user.name, user_path(current_user))
        end
    end
end
