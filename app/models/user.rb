class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :update_slug

  def update_slug

  	self.slug = name.parameterize

  end

  has_many :links

  validates_uniqueness_of :name
  validates_uniqueness_of :email

  
extend FriendlyId
  friendly_id :name, use: :slugged


 
end
