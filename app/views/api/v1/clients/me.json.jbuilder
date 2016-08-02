json.extract! @me, :id, :email
json.extract! @me.person, :name, :photo
json.phones me_phones_api_v1_clients_url(format: :json)
json.interests me_interests_api_v1_clients_url(format: :json)
json.food_preferences me_food_preferences_api_v1_clients_url(format: :json)
json.delivery_addresses me_delivery_addresses_api_v1_clients_url(format: :json)
json.invitations me_invitations_api_v1_clients_url(format: :json)
json.active_invitation api_v1_invitation_url(@me.active_invitation, format: :json) if @me.active_invitation
