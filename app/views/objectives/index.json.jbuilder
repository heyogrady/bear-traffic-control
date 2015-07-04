json.array!(@objectives) do |objective|
  json.extract! objective, :id, :name, :due_year, :due_quarter, :user_id
  json.url objective_url(objective, format: :json)
end
