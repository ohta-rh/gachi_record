module GachiRecord
  ##
  # = inspired ActiveRecord::Base
  #  [Usage]
  #    ```
  #    class User < GachiRecord::Base
  #    end
  #    ```
  #   
  class Base
    class << self

      #
      # === find by natural key
      #  - id integer
      #     [Usage]
      #       ```
      #        user = User.find(1)
      #       ```
      def find(id)
        raise NotImplementedError
      end

      def connection
        @connection ||= Connection.instacne
      end
    end
  end
end

