class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :list
  attr_accessible :user, :list
  
  validates_presence_of :user, :list

  def self.user_list?(user_id, list_id)
    find_by_user_id_and_list_id(user_id, list_id).present?
  end
end
