class Post < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user

  has_attached_file :image, styles: { medium: "640px" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
