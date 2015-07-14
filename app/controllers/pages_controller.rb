class PagesController < ApplicationController

  def index
    @journals = Journal.all
  end


end
