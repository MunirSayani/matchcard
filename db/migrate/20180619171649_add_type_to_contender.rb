class AddTypeToContender < ActiveRecord::Migration[5.1]
  def change
    add_column :contenders, :type, :string
  end
end
