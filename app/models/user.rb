class User
  include Mongoid::Document
  include Mongoid::Paperclip
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  field :name
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  embeds_many :meals
  has_mongoid_attached_file :avatar, :styles => { :medium => "300x300#", :thumb => "100x100#" }
end
