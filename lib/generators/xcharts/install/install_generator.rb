require 'rails/generators'

if ::Rails.version < "4.0" || !::Rails.application.config.assets.enabled
  module Xcharts
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Warn about low version of ::Rails"

        def do_nothing
          say_status("deprecated", "You need ::Rails >= 4.0 and/or Assets Pipeline turned on.")
          say_status("", "Please update your ::Rails app, and comeback soon!")
        end
      end
    end
  end
else
  module Xcharts
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs Xcharts.js, a D3-based library for building custom charts and graphs to Asset Pipeline"
        def add_assets
          css_inject = " *= require xcharts\n"
          app_scss = File.join(::Rails.root, 'app', 'assets', 'stylesheets', 'application.scss')
          app_css = File.join(::Rails.root, 'app', 'assets', 'stylesheets', 'application.css')

          if File.exist?(app_scss)
            insert_into_file app_scss, css_inject, :after => "require_self\n"
          elsif File.exist?(app_css)
            insert_into_file app_css, css_inject, :after => "require_self\n"
          else
            say_status('Nor application.css/application.scss could not be found!')
          end

          app_js = File.join(::Rails.root, 'app', 'assets', 'javascripts', 'application.js')
          app_coffee = File.join(::Rails.root, 'app', 'assets', 'javascripts', 'application.coffee.js')

          if File.exist?(app_js)
            insert_into_file app_js, "//= require xcharts\n", :after => "jquery_ujs\n"
          elsif File.exist?(app_coffee)
            insert_into_file app_coffee, "//= require xcharts\n", :after => "jquery_ujs\n"
          else
            say_status('Nor application.js/application.coffee.js could not be found!')
          end

        end
      end
    end
  end
end
