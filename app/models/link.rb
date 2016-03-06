class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments

	has_attached_file :image, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

 

end
