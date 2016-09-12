class Player < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  GENDER = {
    'Male'   => 'male',
    'Female' => 'female'
  }
end
