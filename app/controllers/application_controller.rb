class ApplicationController < ActionController::Base
  before_action :check_login_redirect, only: [:index, :update, :show, :new, :edit, :destroy]

  def check_login_redirect
    unless session[:user]
      redirect_to(:action => 'login', :controller => 'users')
    end
  end
end
