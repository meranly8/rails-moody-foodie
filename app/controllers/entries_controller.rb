class EntriesController < ApplicationController
    def index
        @entries = Entry.all.sort_by{|entry| entry.date }.reverse
    end

    def show
        @entry = Entry.find_by(id: params[:id])
    end
end