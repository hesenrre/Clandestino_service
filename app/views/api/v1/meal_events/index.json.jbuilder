json.array! @events do |event|
  json.extract! event, :id, :event_date, :confirmation_deadline, :provider_confirmation_deadline,
  :baseprice, :min_attendants, :max_attendants, :max_guest, :created_at
  json.url api_v1_event_url(event, format: :json)
end
