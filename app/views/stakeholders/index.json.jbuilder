json.array!(@stakeholders) do |stakeholder|
  json.extract! stakeholder, :id, :name, :lastname, :email
  json.url stakeholder_url(stakeholder, format: :json)
end
