class EntriesController < ApplicationController

  def create
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.create(entry_params)
    redirect_to journal_path(@journal)
  end

  def entry_params
    params.require(:entry).permit(:title, :body, :image, :author, :remote_image_url)
  end


end

