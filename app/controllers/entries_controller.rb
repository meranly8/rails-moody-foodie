class EntriesController < ApplicationController
    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find_by(id: params[:id])
    end
end