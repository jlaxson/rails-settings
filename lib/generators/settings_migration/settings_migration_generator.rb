require 'rails/generators'
require 'rails/generators/migration'

class SettingsMigrationGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  
  source_root File.join(File.dirname(__FILE__), 'templates')
  
  argument :migration_name, :type => :string, :default => "CreateSettings"  
  
  def self.next_migration_number(dirname)
    next_migration_number = current_migration_number(dirname) + 1
    if ActiveRecord::Base.timestamped_migrations
      [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
    else
      "%.3d" % next_migration_number
    end
  end
  
  def copy_migration
    migration_template "migration.rb", "db/migrate/#{migration_name.underscore}.rb" 
  end
  
end