class Contender < ApplicationRecord
  belongs_to :Contender, optional: true
    
    
    def possible_contenders
       Entity.contenders_for(self.type)
    end
      
    def self.descendant_types
      ["Superstar", "TagTeam"]
    end
end
