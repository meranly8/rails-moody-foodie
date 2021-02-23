class EntryProvisionsController < ApplicationController
  def index
  end
  
  def show
    @entry_provision = EntryProvision.find_by(id: params[:id])
  end

  def new
    @entry_provision = EntryProvision.new
    @entry_provision.build_provision
  end

  def edit
    @entry_provision = EntryProvision.find_by(id: params[:id])
  end

  def update
    @entry_provision = EntryProvision.find_by(id: params[:id])
    @entry_provision.update(entry_provision_params)
    redirect_to entry_provision_path(@entry_provision)
  end

  def destroy
    entry_provision = EntryProvision.find_by(id: params[:id])
    entry = entry_provision.entry
    entry_provision.destroy
    redirect_to entry_path(entry)
  end

  private
    def entry_provisions_params
      params.require(:entry_provision).permit(:amount, :unit, :homemade, :description, :provision_id, provision_attributes: [:name, :provision_type, :approx_cals_per_serving])
    end
end
