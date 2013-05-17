class PublicsController < ApplicationController
  def index
    @lists = List.publics
  end
end