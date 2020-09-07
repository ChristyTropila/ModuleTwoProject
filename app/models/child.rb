class Child < ApplicationRecord
    has_many :recipes, dependent: :destroy

    def self.current
        Thread.current[:child]
      end
      
      def self.current=(child)
        Thread.current[:child] = child
      end


end
