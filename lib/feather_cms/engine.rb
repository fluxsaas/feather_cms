module FeatherCms
  class Engine < ::Rails::Engine
    isolate_namespace FeatherCms

    config.generators do |g|                                                               
      g.test_framework :rspec
      g.integration_tool :rspec
    end

    initializer "team_page.feather_cms" do |app|
      FeatherCms::Config.init do |c|
        #Note: For basic authentication
        c.authentication = {name: 'feather', password: 'password'}
        #Note: For before filter
        #c.authentication = :authenticate_user!
        
        #c.template_extenstion = 'html'   #default : html
        c.template_types = ["html", "haml"]
      end
    end

  end
end
