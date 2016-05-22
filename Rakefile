Dir[File.expand_path('lib/**/*.rake')].each { |f| load(f) }

def pre_message(task)
  $logger.debug "Running task `#{task.name}` in #{RACK_ENV} environment."
end

task :environment do
  require './environment'
  RACK_ENV  ||= ENV.fetch('RACK_ENV') { 'development' }
  MIGRATIONS_DIR ||= ENV.fetch('MIGRATIONS_DIR') { 'db/migrate'  }
end
