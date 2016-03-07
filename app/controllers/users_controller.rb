class UsersController < ApplicationController

	layout "withheader", except: [:index]


def show
  @users = User.all
end




end
