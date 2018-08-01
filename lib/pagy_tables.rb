require "pagy_tables/railtie"

require_relative "../app/helpers/table_helper.rb"

module PagyTables
  class Engine < ::Rails::Engine
    initializer 'pagy_tables.setup_helpers' do |app|
      [TableHelper].each do |helper|
        app.config.to_prepare do
          ActionController::Base.send(:helper, helper)
        end
      end
    end
  end
end
