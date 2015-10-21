class Image < ActiveRecord::Base
  belongs_to :user
  has_many :tagged_users, class_name: User, foreign_key: :user_id

  validates_presence_of :title
end
