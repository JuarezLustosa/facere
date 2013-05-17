class Lists::TasksController < ApplicationController
  before_filter :locate_list
  before_filter :build_taks
  respond_to :js
  
  def create
    @task.list = @list
    @task.save
    respond_with @task
  end
  
  private

  def build_taks
    @task ||= params[:id].present? ? Taks.find(params[:id]) : Task.new
    @task.attributes = params[:task] if params[:task]
  end    
  
  def locate_list
    @list = List.find(params[:list_id])
  end
end