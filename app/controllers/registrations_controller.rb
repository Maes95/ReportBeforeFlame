class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:stakeholder).permit(:name, :lastname, :email, :password)
  end

end
