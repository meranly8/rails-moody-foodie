class EntriesController < ApplicationController
    before_action :enforce_login
    before_action :set_entry, only: [:show, :edit, :update, :destroy]
    
    def index
    end
    
    def show
    end

    def new
        @entry = Entry.new(date: Date.today)
    end

    def create
        @entry = current_user.entries.build(entry_params)
        if @entry.save
            redirect_to entry_path(@entry)
        else
            flash[:message] = @entry.errors.full_messages.join(", ")
            render :new
        end
    end

    def edit
    end

    def update
        @entry.update(entry_params)
        redirect_to entry_path(@entry)
    end

    def destroy
        @entry.destroy
        redirect_to user_path(current_user)
    end

    private
        def entry_params
            params.require(:entry).permit(:date, :end_of_day_mood)
        end

        def set_entry
            @entry = Entry.find_by(id: params[:id])
        end
end