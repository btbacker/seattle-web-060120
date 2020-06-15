class House < ActiveRecord::Base
    has_many :sortings
    has_many :students, through: :sortings
end