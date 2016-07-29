json.extract! @me, :id, :email
json.extract! @me.person, :name, :photo
json.phones @me.phones, :id, :number, :ext, :label
json.interests @me.interests, :id, :label, :icon
json.food_preferences @me.food_styles, :id, :label, :icon
if @me.active_invitation
  json.active_invitation do
    json.extract! @me.active_invitation, :id, :status, :guest
    json.extract! @me.active_invitation.meal_event, :event_date, :confirmation_deadline, :baseprice, :max_guest, :description
    json.url api_v1_clients_invitation_url(@me.active_invitation)
  end
end
json.invitations @me.invitations do |invitation|
  json.extract! invitation, :id ,:event_rate, :chef_rate, :meal_rate, :status
  json.extract! invitation.meal_event, :event_date, :description, :baseprice
  json.url api_v1_clients_invitation_url(invitation)
end

json.addresses do
  json.url addresses_api_v1_clients_me_index_url(format: :json)
  json.summary  @me.delivery_addresses do |addr|
    json.extract! addr, :address_id, :label
    json.url api_v1_clients_address_url(addr, format: :json)
  end
end
