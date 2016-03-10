class UsersController < ApplicationController

	before_filter :authenticate_user!

	layout "withheader", except: [:index]


def show
 @user = User.friendly.find(params[:id])



    
end





end
