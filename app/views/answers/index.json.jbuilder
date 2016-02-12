json.array!(@answers) do |answer|
  json.extract! answer, :id, :content, :type, :stakeholder_id, :report_id
  json.url answer_url(answer, format: :json)
end
