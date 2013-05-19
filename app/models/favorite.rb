class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :list
  attr_accessible :user, :list
  
  delegate :description, :to => :list, :allow_nil => true, :prefix => true
  validates_presence_of :user, :list
  
end
