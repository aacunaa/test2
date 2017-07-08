class Business < ApplicationRecord
	has_many :stage
	validates :budget, presence: true

end
