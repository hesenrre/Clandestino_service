class Api::V1::MeController < Api::V1::BaseController
  before_action :me

  def phones
    @phones = @me.phones
  end

  def interests
    @interests = @me.interests
  end

  def food_preferences
    @food_preferences = @me.food_styles
  end

  def delivery_addresses
    @addresses = @me.delivery_addresses
  end

  def invitations
    @invitations = @me.invitations
  end

  private
  def me
    @me = Client.find(1)
  end
end
