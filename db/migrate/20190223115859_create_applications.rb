class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.text :answer
      t.string :status
      t.time :time_of_creation

      t.timestamps
    end
  end
end
