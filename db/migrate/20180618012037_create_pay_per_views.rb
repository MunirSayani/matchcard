class CreatePayPerViews < ActiveRecord::Migration[5.1]
  def change
    create_table :pay_per_views do |t|
      t.string :name

      t.timestamps
    end
  end
end
