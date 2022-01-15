class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  has_many :user_posts
  has_many :comments
  has_one_attached :avata

  after_initialize :init 

  def init 
    self.role_id ||= 2
  end
end
