class EntriesController < ApplicationController
    # before_action :enforce_login

    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find_by(id: params[:id])
    end

    def new
        @entry = Entry.new(date: Date.today)
    end

    def create
        @entry = Entry.new(entry_params)
        if @entry.save
            redirect_to entry_path(@entry)
        else
            flash[:message] = @entry.errors.full_messages("")
            render :new
        end
    end

    def edit
        @entry = Entry.find_by(id: params[:id])
    end

    def update
        @entry = Entry.find_by(id: params[:id])
        @entry.update(entry_params)
        redirect_to entry_path(@entry)
    end

    def destroy
        entry = Entry.find_by(id: params[:id])
        entry.destroy
        redirect_to user_show(current_user)
    end

    private
        def entry_params
            params.require(:entry).permit(:date, :end_of_day_mood)
        end
end