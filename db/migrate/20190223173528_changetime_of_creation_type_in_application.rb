class ChangetimeOfCreationTypeInApplication < ActiveRecord::Migration[5.2]
  def change
    change_column :applications, :time_of_creation, :datetime
  end
end
