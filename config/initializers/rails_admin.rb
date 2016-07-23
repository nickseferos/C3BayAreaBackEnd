RailsAdmin.config do |config|

  ### Popular gems integration
  config.main_app_name = ["C3 Church Bay Area", "Admin and CMS"]

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    #Campus Quick Ref Definitions
    m = 'C3 Bay area'
    t = 'Treasure Island Campus'
    g = 'Green Valley Campus'
    s = 'SOMA Campus'

    #C3 Bay Area General
    config.model MainOrbit do
      label 'Main Orbit'
      navigation_label m
      weight 1
    end

    #TI Specific
    config.model TiSpecificOrbit do
      label 'TI Specific Orbit'
      navigation_label t
      weight 2
    end


    #GV Specific
    config.model GvSpecificOrbit do
      label 'GV Specific Orbit'
      navigation_label g
      weight 3
    end


    #SOMA Specific
    config.model SomaSpecificOrbit do
      label 'SOMA Specific Orbit'
      navigation_label s
      weight 4
    end

  end
end
