class Professional::SchoolsController < Professional::ApplicationController
  before_action :set_school, only: [:invite]

  def index
    params[:name].present? ? @schools = current_photographer.schools.where(name: params[:name].capitalize) : @schools = current_photographer.schools
  end

  def show
    @school = current_photographer.schools.find(params[:id])
  end

  def invite
    @school = School.invite!(school_params)
  end

  def school_params
    params.require(:school).permit(:email, :password, :password_confirmation)
  end
end


# TODO : METTRE LE FORM DANS SCHOOLS/INDEX.HTML.ERB APRES LE PULL DE CLEMENCE

# <br>
# <%= form_for(:school, url: professional_schools_invite_path) do |f| %>
#   <%= f.label :email %>
#   <%= f.text_field :email %>
#   <%= f.label :password %>
#   <%= f.text_field :password %>
#   <%= f.label :password_confirmation %>
#   <%= f.text_field :password_confirmation %>
#   <%= f.submit %>
# <% end %>

#TODO 2 : METTRE LE MAILER DANS LE FORM

#TODO 3 : METRE LE NAME / ADRESSE OBLIGATOIRE DANS DEVISE
