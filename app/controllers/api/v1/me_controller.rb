class Api::V1::MeController < Api::V1::BaseController
  before_action :authenticate_user!
  before_action -> {authorized_roles :clients, :chefs}, only: [:index, :phones]
  before_action -> {authorized_roles :clients}, except: [:index, :calls]
  before_action -> {authorized_roles :chefs}, only: [:calls]

  def index
    @me = current_user
    # @user_type = user_type
  end

  # BEGIN CLIENT METHODS
  def interests
    @interests = current_user.interests
  end

  def food_preferences
    # p current_client
    @food_preferences = current_user.food_styles
  end

  def delivery_addresses
    @addresses = current_user.delivery_addresses
  end

  def invitations
    @invitations = current_user.invitations
  end
  # END CLIENT METHODS

  # BEGIN CHEF METHODS
  def calls
    @calls = current_user.calls
  end
  # END CHEF METHODS

  # BEGIN GLOBAL METHODS
  def phones
    @phones = current_user.phones
  end
  # END GLOBAL METHODS
end
