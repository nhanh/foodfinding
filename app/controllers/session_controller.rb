class SessionController < ApplicationController
  def login
    respond_to do |format|
      format.html {render layout: false}
    end
  end
end
