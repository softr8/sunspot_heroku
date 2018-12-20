module Sunspot
  module Solr
    class CustomServer < Sunspot::Solr::Server
      #
      # Directory in which to store PID files
      #
      def pid_dir
        File.join(FileUtils.pwd, 'tmp', 'pids')
      end

      #
      # Name of the PID file
      #
      def pid_file
        "sunspot-solr.pid"
      end

      #
      # Directory to use for Solr home.
      #
      def solr_home
        File.join(FileUtils.pwd, 'solr')
      end

      #
      # Port on which to run Solr
      #
      def port
        ENV.fetch('PORT', 8983)
      end

      #
      # Log file for Solr. File is in the rails log/ directory.
      #
      def log_file
        File.join(FileUtils.pwd, 'log', "sunspot-solr.log")
      end
    end
  end
end
