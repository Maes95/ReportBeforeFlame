json.array!(@reports) do |report|
  json.extract! report, :id, :title, :content, :report_type, :priority, :stakeholder_id
  json.url report_url(report, format: :json)
end
