class Man < ApplicationRecord
	has_many :couples
	has_many :women, through: :couples
	validates :name, presence: true
end
