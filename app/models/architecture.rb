class Architecture < ApplicationRecord
  mount_uploader :architecture_image, ArchitectureImageUploader

  belongs_to :user

  validates :name, presence: true, length: { maximum: 255 }
  validates :location, presence: true, length: { maximum: 255 }
  validates :architect, length: { maximum: 255 }
  validates :description, length: { maximum: 65_535 }

  enum open_range: { unpublish: 0, publish: 1 }
end
