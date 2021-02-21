class ProvisionsController < ApplicationController
    def index
        @provisions = Provision.all.sort_by{|provision| provision.name }
    end

    def show
        @provision = Provision.find_by(id: params[:id])
    end
end