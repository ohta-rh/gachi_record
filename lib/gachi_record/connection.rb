module GachiRecord
  ##
  # = Database connection manager
  class Connection
    include Singleton

    def initialize
      @config = Yaml.load_file("../../config/database.yml")
    end

    #
    # == Proxy mysql2::client
    #
    def execute(query)
      raise NotImplementedError
    end
  end
end
