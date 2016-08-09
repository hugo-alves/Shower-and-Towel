class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    user = User.find_for_facebook(request.env['omniauth.auth'])

    if user.persisted?
      sign_in_and_redirect user, event: :authentication
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
    else
      flash[:alert] = 'We need email'
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_path
    end
  end
end
