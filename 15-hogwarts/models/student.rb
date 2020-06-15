class Student < ActiveRecord::Base
  has_many :sortings
  has_many :house, through: :sortings
end