class Player < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  validates :name, presence: true, length: { minimum: 3 }
  validates :gender, presence: true
  validates :residence, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :plays, presence: true
  validates :status, presence: true

  GENDER = {
    'Male'   => 'male',
    'Female' => 'female'
  }
end
