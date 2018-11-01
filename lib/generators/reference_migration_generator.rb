class ReferenceMigrationGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)
  argument :model_name, type: :string

  def create_migration_file
    migration_template('migration.rb', "db/migrate/add_reference_to_#{table_name}.rb", assings: local_assings)
  end

  private

  def local_assings
    {
      migration_version: migration_version,
      table_name: table_name
    }
  end

  def table_name
    model_name.underscore.pluralize
  end

  def rails5?
    Rails.version.start_with?('5')
  end

  def migration_version
    if rails5?
      "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
    end
  end

  def self.next_migration_number(dir)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end
end