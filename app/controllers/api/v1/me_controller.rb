class Api::V1::MeController < Api::V1::BaseController
  devise_group :user, contains: [:client, :chef]
  before_action :authenticate_user!, only: [:index, :phones]
  before_action :authenticate_client!, except: [:index, :calls, :phones]
  before_action :authenticate_chef!, only: [:calls]
  before_action :me

  def index
    @me = current_user
    @user_type = user_type
  end

  # BEGIN CLIENT METHODS
  def interests
    @interests = @me.interests
  end

  def food_preferences
    # p current_client
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
    @me = current_user || current_client || current_chef
  end

  def user_type
    if current_client
      "client"
    else
      "chef"
    end
  end
end
