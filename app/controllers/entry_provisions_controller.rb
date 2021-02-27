class EntryProvisionsController < ApplicationController
  before_action :enforce_login
  before_action :set_entry_provision, only: [:edit, :update, :destroy]

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
      @entry_provision.build_provision
      render :new
    end
  end

  def edit
  end

  def update
    if @entry_provision.update(entry_provision_params)
      redirect_to entry_path(@entry_provision.entry)
    else
      render :edit
    end
  end

  def destroy
    entry = @entry_provision.entry
    @entry_provision.destroy
    redirect_to entry_path(entry)
  end

  private
    def entry_provision_params
      params.require(:entry_provision).permit(:amount, :unit, :homemade, :description, :entry_id, :provision_id, provision_attributes: [:name, :provision_type, :approx_cals_per_serving])
    end

    def set_entry_provision
      @entry_provision = EntryProvision.find_by(id: params[:id])
    end
end
