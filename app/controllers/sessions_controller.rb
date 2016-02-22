class SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /stakeholder/sign_in
  # def new
  #   super
  # end

  # POST /stakeholder/sign_in
  # def create
  #   super
  # end

  # DELETE /stakeholder/sign_out
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    yield if block_given?
    respond_to_on_destroy
  end

  def submit
    redirect_to reports_path
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end

  def respond_to_on_destroy
    # We actually need to hardcode this as Rails default responder doesn't
    # support returning empty response on GET request
    respond_to do |format|
      format.all { head :no_content }
      format.any(*navigational_formats) { redirect_to new_stakeholder_session_path }
    end
  end

end
