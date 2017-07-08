json.array! @stage do |stage|
  json.id stage.id
  json.name stage.name
  json.budget_stage stage.budget_stage
  json.business do
  	json.name stage.business.name
  	json.budget stage.business.budget
  	json.date_end stage.business.date_end

end