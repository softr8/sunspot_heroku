require 'sunspot/solr/tasks'
require 'sunspot/solr/server'
require './sunspot/solr/custom_server'

namespace :heroku_sunspot do
  namespace :solr do
    desc 'Start the Solr instance'
    task :start do
      server.start
      puts 'Successfully started Solr ...'
    end

    desc 'Run the Solr instance in the foreground'
    task :run do
      server.run
    end

    desc 'Stop the Solr instance'
    task :stop do
      server.stop
      puts 'Successfully stopped Solr ...'
    end

    def server
      Sunspot::Solr::CustomServer.new
    end
  end
end
