json.extract! @delivery_address, :id, :label
json.extract! @delivery_address.address, :street, :no_ext, :no_int,
                                         :neighborhood, :city, :state,
                                         :country, :lat, :lng
