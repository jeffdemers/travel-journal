class EntriesController < ApplicationController
  def show
  end

    def create
      @journal = Journal.find(params[:journal_id])
      @entry = @journal.entries.create(params[:entry])
      redirect_to journal_path(@journal)
  end
end
