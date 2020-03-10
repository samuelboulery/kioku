class Photographers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/photographer.rb)
      @photographer = Photographer.from_omniauth(request.env['omniauth.auth'])

      if @photographer.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect @photographer, event: :authentication
      else
        session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
        redirect_to new_photographer_registration_url, alert: @photographer.errors.full_messages.join("\n")
      end
  end
end
