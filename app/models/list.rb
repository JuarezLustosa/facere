class List < ActiveRecord::Base
  belongs_to :owner, :class_name => "User", :foreign_key => :user_id
  has_many :tasks, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :users, :through => :favorites
  
  attr_accessible :description, :public, :owner
  
  validates_presence_of :description, :owner
  
  scope :publics, where(:public => true)
  scope :includes_tasks, includes(:tasks)
end
