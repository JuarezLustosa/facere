class Task < ActiveRecord::Base
  belongs_to :list
  attr_accessible :description, :list
  
  validates_presence_of :description
end
