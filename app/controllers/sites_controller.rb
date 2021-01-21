class SitesController < ApplicationController
  def index
    @information = Information.order('created_at DESC')
  end
end
