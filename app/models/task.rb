class Task < ApplicationRecord
  belongs_to :user

  # default_scope -> { order(created_at: :desk)}
  validates :title, presence: true, length: { maximum: 255 }
  validates :memo, length: { maximum: 2048 }

  mount_uploader :image, ImageUploader
end
