class UsersController < ApplicationController
  def show
    @user = { name: 'test' }
  end
end
