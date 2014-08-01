json.array!(@agendas) do |agenda|
  json.extract! agenda, :id, :title, :when, :place, :description
  json.url agenda_url(agenda, format: :json)
end
