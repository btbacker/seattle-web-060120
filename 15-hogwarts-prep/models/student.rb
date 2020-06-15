class Student < ActiveRecord::Base
    has_one :sorting
    has_one :house, through: :sorting
end