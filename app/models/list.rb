class List < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_many :favorites
  
  attr_accessible :description, :public, :user
  
  validates_presence_of :description, :user
  
  scope :publics, where(:public => true)
end
