class Photo < ApplicationRecord
    belongs_to :place
    mount_uploader :picture, PictureUploader
    validates :caption, presence: true, length: {minimum: 3}
    #validates :picture, presence: true
end
