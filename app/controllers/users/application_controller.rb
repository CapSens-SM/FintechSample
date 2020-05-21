class Users::ApplicationController < ApplicationController
  before_action :authenticate_user!, except: :mobile_view
end