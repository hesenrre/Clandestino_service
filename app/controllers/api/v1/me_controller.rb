class Api::V1::MeController < Api::V1::BaseController
  before_action :me

  # BEGIN CLIENT METHODS
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
  # END CLIENT METHODS

  # BEGIN CHEF METHODS
  def calls
    @calls = @me.calls
  end
  # END CHEF METHODS

  # BEGIN GLOBAL METHODS
  def phones
    @phones = @me.phones
  end
  # END GLOBAL METHODS


  private
  def me
    @me = if request.original_url.include? "clients"
      Client.find(1)
    else
      Chef.find(1)
    end
  end
end
