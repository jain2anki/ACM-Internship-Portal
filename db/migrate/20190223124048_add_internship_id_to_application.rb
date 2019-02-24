class AddInternshipIdToApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :internship_id, :integer
  end
end
