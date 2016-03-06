class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments

	has_attached_file :image, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    attr_accessor :image_file_name
attr_accessor :image_content_type
attr_accessor :image_file_size
attr_accessor :image_updated_at

end
