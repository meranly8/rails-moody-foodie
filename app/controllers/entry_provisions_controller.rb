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
end
