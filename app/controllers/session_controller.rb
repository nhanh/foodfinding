class SessionController < ApplicationController
  def login
    respond_to do |format|
      format.html
    end
  end
end