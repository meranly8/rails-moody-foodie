class EntryProvisionsController < ApplicationController
  def index
  end
  
  def show
    @entry_provision = EntryProvision.find_by(id: params[:id])
  end

  def new
    @entry_provision = EntryProvision.new
  end

  def edit
    @entry_provision = EntryProvision.find_by(id: params[:id])
  end

  def update
    @entry_provision = EntryProvision.find_by(id: params[:id])
    @entry_provision.update(entry_provision_params)
    redirect_to entry_provision_path(@entry_provision)
  end

  private
    def entry_provisions_params
      params.require(:entry_provision).permit(:provision_id, :amount, :unit, :homemade, :description)
    end
end
