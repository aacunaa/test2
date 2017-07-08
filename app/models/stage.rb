class Stage < ApplicationRecord
  belongs_to :business
  validates :budget_stage, presence: true
end
