class EntriesController < ApplicationController
    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find_by(id: params[:id])
    end

    def new
        @entry = Entry.new(date: Date.today)
    end

    private
        def entry_params
            params.require(:entry).permit(:date, :end_of_day_mood)
        end
end