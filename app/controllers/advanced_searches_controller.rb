class AdvancedSearchesController < ApplicationController

  def new
    @advanced_search = AdvancedSearch.new
    
  end

  def create
    @delivery_quests = DeliveryQuest.all.paginate(:page => params[:page], :per_page => 10)
    render 'show'
  end

  def show

  end

end