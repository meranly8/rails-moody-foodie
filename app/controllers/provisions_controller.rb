class ProvisionsController < ApplicationController
    def index
        @provisions = Provision.all
    end

    def show
        @provision = Provision.find_by(id: params[:id])
    end
end