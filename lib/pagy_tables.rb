require "pagy_tables/railtie"

require_relative "../app/helpers/pagy_table_helper.rb"

module PagyTables
  class Engine < ::Rails::Engine
    initializer 'pagy_tables.setup_helpers' do |app|
      [PagyTableHelper].each do |helper|
        app.config.to_prepare do
          ActionController::Base.send(:helper, helper)
        end
      end
    end
  end
end
