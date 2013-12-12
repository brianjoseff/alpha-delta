class Asset < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
  # before_create :default_name

  def default_name
    self.name ||= File.basename(image.filename, '.*').titleize if image
  end
  has_attached_file :image, :styles => { :normal => "100%", :composite => "1000",:small => "100 x100>",:medium => "200x200>", :thumb => "50x50>" },
                            :storage => :s3, 
                            :s3_credentials => "#{Rails.root}/config/s3.yml", 
                            :path => "/:attachment/:id/:style/:filename"
end
