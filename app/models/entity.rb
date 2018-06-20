class Entity < ApplicationRecord
    validates_presence_of :name
    
    def self.contenders_for(type)
        Entity.where("entity_type": type).pluck(:name)
    end
end
