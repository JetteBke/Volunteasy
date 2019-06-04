class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate(auth_options)

    if self.resource.nil?
      redirect_to root_path
    else
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    end
  end
end
