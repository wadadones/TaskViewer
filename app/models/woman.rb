class Woman < ApplicationRecord
	has_many :couples
	has_many :men, through: :couples
end
