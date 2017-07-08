class StageSerializer < ActiveModel::Serializer
	belongs_to :business
	attributes :id, :budget_stage, :name, :business_id
end
