module ApplicationHelper
  def school_aria_label(status)
    case status
      when "clos"
        "Vente terminée"
      when "chargement"
        "En attente de chargement des photos"
      when "association"
        "En attente de l'association des photos et des étudiants"
      when "ok"
        "Photos envoyées aux familles"
    else
        "NC"
    end
  end

end


# clos: "Clos",
#     chargement: "Chargement",
#     association: "Association",
#     ok: "Ok"
