class NoteImage < ApplicationRecord
  belongs_to :note

  attachment :image
  accepts_attachments_for :note_images, attachment: :image
end
