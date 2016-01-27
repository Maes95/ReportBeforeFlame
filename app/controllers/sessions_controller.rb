class SessionsController < Devise::SessionsController
  def submit
    redirect_to reports_path
  end
end
