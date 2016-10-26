class Recipe < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "320x500>" }
  belongs_to :user
# has_many :likes
  has_many :comments, dependent: :destroy
  has_many :users_commented, through: :likes, source: :user


  validates_attachment :image, presence: true,
                                  content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
                                  size: { less_than: 5.megabytes }

  validates :description, presence: true
  validates :user_id, presence: true
  validates :serving_size, presence: true
  validates :time, presence: true
  validates :ingredients, presence: true
  validates :steps, presence: true
  # validates :allergies, presence: true
  validates :title, presence: true, length: { minimum: 3 }
  

end
