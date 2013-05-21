class Lists::TasksController < ApplicationController
  before_filter :locate_list
  before_filter :build_task
  respond_to :js
  
  def create
    @task.list = @list
    @task.save
    respond_with @task
  end
  
  def destroy
    @task.destroy
    respond_with @task
  end
  
  private

  def build_task
    @task ||= params[:id].present? ? Task.find(params[:id]) : Task.new
    @task.attributes = params[:task] if params[:task]
  end    
  
  def locate_list
    @list = List.find(params[:list_id])
  end
end