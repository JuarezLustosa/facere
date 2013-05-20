class PublicsController < ApplicationController
  def index
    @lists = List.publics.includes_tasks
  end
end