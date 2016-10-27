class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :recipes
  has_many :comments, dependent: :destroy
  has_many :recipes_commented, through: :comments, source: :recipe
  has_many :likes
  has_many :recipes_liked, through: :likes, source: :recipe


end
