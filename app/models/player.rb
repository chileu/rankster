class Player < ActiveRecord::Base
  has_many :photos

  GENDER = {
    'Male'   => 'male',
    'Female' => 'female'
  }
end
