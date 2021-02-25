class ProvisionsController < ApplicationController
    before_action :enforce_login
    
    def index
        @provisions = Provision.order_by_name
    end

    def show
        @provision = Provision.find_by(id: params[:id])
    end

    def new
        @provision = Provision.new
    end

    def create
        @provision = Provision.new(provision_params)
        if @provision.save
            redirect_to provision_path(@provision)
        else
            flash[:message] = @provision.errors.full_messages.join("")
            render :new
        end
    end

    private
        def provision_params
            params.require(:provision).permit(:name, :provision_type, :approx_cals_per_serving)
        end
end