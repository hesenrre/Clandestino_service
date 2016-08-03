json.extract! @me, :id, :email
json.extract! @me.person, :name, :photo
json.phones me_phones_api_v1_chefs_url(format: :json)
json.calls me_calls_api_v1_chefs_url(format: :json)
# json.active_call api_v1_call_url(@me.active_call, format: :json) if @me.active_call
