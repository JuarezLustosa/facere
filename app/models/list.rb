class List < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  
  attr_accessible :description, :public, :user
  
  validates_presence_of :description, :user
  
  scope :publics, where(:public => true)
  scope :includes_tasks, includes(:tasks)
end
