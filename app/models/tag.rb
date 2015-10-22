class Tag < ActiveRecord::Base
  belongs_to :tagged_user, class_name: User, foreign_key: :user_id
  belongs_to :tagged_image, class_name: Image, foreign_key: :image_id

  validates_presence_of :user_id, :image_id
end
