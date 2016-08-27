class UsersController < ApplicationController
  def show
    @user = { name: params[:name] || 'ゲストさん' }
  end
end
