class CreateContenders < ActiveRecord::Migration[5.1]
  def change
    create_table :contenders do |t|
      t.references :match
      t.string :name

      t.timestamps
    end
  end
end
