json.array!(@api_v1_notes) do |api_v1_note|
  json.extract! api_v1_note, :id
  json.url api_v1_note_url(api_v1_note, format: :json)
end
