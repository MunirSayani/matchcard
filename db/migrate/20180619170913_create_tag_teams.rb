class CreateTagTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_teams do |t|
      t.string :name 
      
      t.timestamps
    end
  end
end
