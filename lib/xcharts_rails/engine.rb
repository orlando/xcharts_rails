require 'rails'

module XchartsRails
  class Engine < ::Rails::Engine
    initializer 'xcharts_rails.setup',
      :group => :all do |app|
        app.paths['config'] << File.join(config.root, 'vendor')
    end
  end
end
