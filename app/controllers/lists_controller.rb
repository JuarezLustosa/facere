class ListsController < ApplicationController
  before_filter :build_list, :exepct => [:index]
  
  def index
    @lists = List.all
    respond_with @lists
  end
  
  def create
    @list.user = current_user
    @list.save
    
    respond_with @list
  end
  
  def update
    @list.save
    respond_with @list
  end
  
  private
  def build_list
    @list ||= params[:id].present? ? List.find(params[:id]) : List.new
    @list.attributes = params[:list] if params[:list]
  end  
end
