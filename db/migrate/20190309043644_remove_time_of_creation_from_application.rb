class RemoveTimeOfCreationFromApplication < ActiveRecord::Migration[5.2]
  def change
    remove_column :applications, :time_of_creation, :time
  end
end
