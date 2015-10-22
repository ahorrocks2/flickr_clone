class Image < ActiveRecord::Base
  belongs_to :user
  has_many :tagged_users, class_name: User, foreign_key: :user_id
  validates_presence_of :title
  has_attached_file :upload, :styles => { :display => "500x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :upload, content_type: /\Aimage\/.*\Z/
end
