json.array! @invitations do |invitation|
  json.id invitation.id
  json.status invitation.status
  json.name invitation.meal_event.name
  json.url api_v1_invitation_url(invitation, format: :json)
end
