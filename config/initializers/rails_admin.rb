RailsAdmin.config do |config|

  ### Popular gems integration
  config.main_app_name = ["C3 Church Bay Area", "Admin and CMS"]

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard do                  # mandatory
      statistics false
    end 
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete

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
      edit do
        field :image, :carrierwave
        field :alt_description, :froala do
          label 'Alternate Description'
        end
      end
    end

    config.model Admin do
      label 'Admin Users'
      navigation_label m
      weight 1
    end

    config.model Culture do
      label 'C3 Culture'
      navigation_label m
      weight 1
    end

    config.model Belief do
      label 'C3 Beliefs'
      navigation_label m
      weight 1
    end

    config.model Verse do
      label 'Verse'
      navigation_label m
      weight 1
    end

    #TI Specific
    config.model TiSpecificOrbit do
      label 'TI Specific Orbit'
      navigation_label t
      weight 2
      edit do
        field :image, :carrierwave
        field :alt_description, :froala do
          label 'Alternate Description'
        end
      end
    end

    config.model TiPodcast do
      label 'TI Podcast'
      navigation_label t
      weight 2
      edit do
        field :media, :carrierwave
        field :title
        field :speaker
        field :series
        field :date
        field :description, :froala
      end
    end


    #GV Specific
    config.model GvSpecificOrbit do
      label 'GV Specific Orbit'
      navigation_label g
      weight 3
      edit do
        field :image, :carrierwave
        field :alt_description, :froala do
          label 'Alternate Description'
        end
      end
    end

    config.model GvPodcast do
      label 'GV Podcast'
      navigation_label g
      weight 3
      edit do
        field :media, :carrierwave
        field :title
        field :speaker
        field :series
        field :date
        field :description, :froala
      end
    end


    #SOMA Specific
    config.model SomaSpecificOrbit do
      label 'SOMA Specific Orbit'
      navigation_label s
      weight 4
      edit do
        field :image, :carrierwave
        field :alt_description, :froala do
          label 'Alternate Description'
        end
      end
    end

    config.model SomaPodcast do
      label 'SOMA Podcast'
      navigation_label s
      weight 4
      edit do
        field :media, :carrierwave
        field :title
        field :speaker
        field :series
        field :date
        field :description, :froala
      end
    end

  end
end
