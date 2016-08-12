json.extract! @me, :id, :email, :name, :photo
json.phones phones_api_v1_me_index_url(format: :json)
if @me.is_in_roles(:clients)
  json.interests interests_api_v1_me_index_url(format: :json)
  json.food_preferences food_preferences_api_v1_me_index_url(format: :json)
  json.delivery_addresses delivery_addresses_api_v1_me_index_url(format: :json)
  json.invitations invitations_api_v1_me_index_url(format: :json)
  json.active_invitation api_v1_invitation_url(@me.active_invitation, format: :json) if @me.active_invitation
elsif @me.is_in_roles(:chefs)
  json.calls calls_api_v1_me_index_url(format: :json)
# json.active_call api_v1_call_url(@me.active_call, format: :json) if @me.active_call
end
