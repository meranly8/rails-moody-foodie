class EntryProvisionsController < ApplicationController
  def index
    # is this a nested route?
    if params[:entry_id] && @entry = Entry.find_by_id(params[:entry_id])
      @entry_provisions = @entry.entry_provisions
    end
  end

  def new
    if params[:entry_id] && @entry = Entry.find_by_id(params[:entry_id])
      @entry_provision = @entry.entry_provisions.build
      @entry_provision.build_provision
    end
  end

  def create
    @entry_provision = EntryProvision.new(entry_provision_params)
    if @entry_provision.save
      redirect_to entry_path(@entry_provision.entry)
    else
      flash[:message] = @entry_provision.errors.full_messages.join("")
      render :new
    end
  end

  def edit
    @entry_provision = EntryProvision.find_by(id: params[:id])
  end

  def update
    @entry_provision = EntryProvision.find_by(id: params[:id])
    @entry_provision.update(entry_provision_params)
    redirect_to entry_path(@entry_provision.entry)
  end

  def destroy
    entry_provision = EntryProvision.find_by(id: params[:id])
    entry = entry_provision.entry
    entry_provision.destroy
    redirect_to entry_path(entry)
  end

  private
    def entry_provision_params
      params.require(:entry_provision).permit(:amount, :unit, :homemade, :description, :entry_id, :provision_id, provision_attributes: [:name, :provision_type, :approx_cals_per_serving])
    end
end
