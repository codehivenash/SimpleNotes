json.array!(@notes) do |note|
  json.extract! note, :id, :name, :description, :tags, :owner, :status
  json.url note_url(note, format: :json)
end
