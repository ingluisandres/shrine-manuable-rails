class AccountVerificationDocument < ActiveRecord::Base 
  include ImageUploader::Attachment(:file)  # ImageUploader will attach and manage `image`

end