# frozen_string_literal: true

# Environment and application load
task :environment do
  require_relative 'app'
end

# Application tasks
namespace :app do
  desc 'Generate radom value of 64 characters (hexadecimal).'
  task :secret do
    require 'securerandom'
    puts SecureRandom.hex(64)
  end

  namespace :session do
    desc 'Clear expired session from Rack::Session::NoBrainer.'
    task :clear do
      require_relative 'lib/rack/session/nobrainer.rb'
      Rack::Session::NoBrainerSessionStore.expired.delete_all
    end
  end
end

# No Brainer rake tasks
namespace :nobrainer do
  Rake::Task['environment'].invoke

  desc 'Drop the database'
  task :drop do
    NoBrainer.drop!
  end

  desc 'Rebalance all tables'
  task :rebalance do
    NoBrainer.rebalance(verbose: true)
  end

  task :sync_indexes do
    NoBrainer.sync_indexes(verbose: true)
  end

  task :sync_table_config do
    NoBrainer.sync_table_config(verbose: true)
  end

  desc 'Synchronize schema'
  task :sync_schema do
    NoBrainer.sync_schema(verbose: true)
  end

  task :sync_schema_quiet do
    NoBrainer.sync_schema
  end

  desc 'Load seed data from db/seeds.rb'
  task :seed do
    # Rails.application.load_seed
    require_relative 'db/seeds.rb' if File.file?('db/seeds.rb')
  end

  task setup: %i[sync_schema_quiet seed]

  desc 'Equivalent to :drop + :sync_schema + :seed'
  task reset: %i[drop sync_schema_quiet seed]

  task create: [:sync_schema]
  task migrate: [:sync_schema]
end

# I18n
namespace :gettext do
  require 'gettext/tools/task'
  require_relative './config/initializers/fast_gettext'

  task :setup do
    GetText::Tools::Task.define do |task|
      task.package_name = (begin
                             FastGettext.text_domain
                           rescue StandardError
                             nil
                           end) || ENV['TEXTDOMAIN'] || 'forgedtofightio'
      task.package_version = '1.0.0'
      task.domain = (begin
                       FastGettext.text_domain
                     rescue StandardError
                       nil
                     end) || ENV['TEXTDOMAIN'] || 'forgedtofightio'
      task.po_base_directory = File.join(File.dirname(__FILE__),
                                         'config',
                                         'locales')
      task.mo_base_directory = File.join(File.dirname(__FILE__),
                                         'config',
                                         'locales')
      task.files = Dir.glob('**/*.{rb,erb,mote}')
      task.enable_description = false
      task.msgmerge_options = %w[--sort-by-msgid --no-location --no-wrap]
      task.msgcat_options = %w[--sort-by-msgid --no-location --no-wrap]
      task.xgettext_options = %w[--sort-by-msgid --no-location --no-wrap]
    end
  end

  desc 'Create mo-files'
  task pack: [:setup] do
    Rake::Task['gettext:mo:update'].invoke
  end

  desc 'Update pot/po files'
  task find: [:setup] do
    Rake::Task['gettext:po:update'].invoke
  end

  desc 'add a new language'
  task :add_language, [:language] do |t, args|
    language = args.language || ENV['LANGUAGE']
    # Let's do some pre-verification of the environment.
    if language.nil?
      print 'You need to specify the language to add.'
      print " Either 'LANGUAGE=en rake gettext:add_language'"
      puts " or 'rake gettext:add_language[en]'"
      next
    end
    language_path = File.join(File.dirname(__FILE__),
                              'config',
                              'locales',
                              language)
    mkdir_p(language_path)
    Rake.application.lookup('gettext:find', t.scope).invoke
  end
end
