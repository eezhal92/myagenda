class Agenda < ActiveRecord::Base
	belongs_to :user
	mount_uploader :attachment, AttachmentUploader
end
