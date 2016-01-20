json.array!(@reports) do |report|
  json.extract! report, :id, :title, :content, :type, :priority, :stakeholder_id
  json.url report_url(report, format: :json)
end
