module Attune
  module Model
    # 
    class AnonymousResult
      attr_accessor :id
      

      def initialize(attributes = {})
        return if attributes.empty?
        # Morph attribute keys into undescored rubyish style
        if self.class.attribute_map[:"id"]
          # Workaround since JSON.parse has accessors as strings rather than symbols
            @id = attributes["id"] || attributes[:"id"]
        end
        

      end

      def to_body
        body = {}
        self.class.attribute_map.each_pair do |key, value|
          body[value] = self.send(key) unless self.send(key).nil?
        end
        body
      end

      def to_json(options = {})
        to_body.to_json
      end

      private
      # :internal => :external
      def self.attribute_map
        {
          :id => :id

        }
      end
    end
  end
end
