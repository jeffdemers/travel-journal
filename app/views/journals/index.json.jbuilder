json.array!(@journals) do |journal|
  json.extract! journal, :id, :user, :title, :content, :image, :rank
  json.url journal_url(journal, format: :json)
end
