class Album < ActiveRecord::Base
  has_many :assets, :as => :imageable, :dependent => :destroy
  
  accepts_nested_attributes_for :assets,
    reject_if: proc { |a| a['file'].blank? && a['file_cache'].blank? }
  attr_accessible :images_attributes
end
