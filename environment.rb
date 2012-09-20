require 'active_scaffold'

# TODO: clean up extensions. some could be organized for autoloading, and others could be removed entirely.
Dir["#{File.dirname __FILE__}/lib/extensions/*.rb"].each { |file| require file }

ActiveSupport::Dependencies.autoload_paths << File.join(File.dirname(__FILE__), 'lib')

ActionView::Base.send(:include, ActiveScaffold::Helpers::ViewHelpers)

ActiveRecord::Base.send(:include, ActiveRecordPermissions::ModelUserAccess::Model)
ActiveRecord::Base.send(:include, ActiveRecordPermissions::Permissions)

require 'bridges/bridge.rb'

I18n.load_path.unshift *Dir[File.join(File.dirname(__FILE__), 'lib', 'active_scaffold', 'locale', '*.{rb,yml}')]