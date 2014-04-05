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
        raise ArgumentError unless id
        query = sprintf(%(SELECT * FROM #{table_name} WHERE id = %d), id)
        
        res = connection.execute(query)
        res.each {|r| r.extend Result::Behavior}



      end

      protected

      def connection
        @connection ||= Connection.instance
      end

      def table_name
        @table_name = self.to_s + "s"
      end

    end
  end
end
