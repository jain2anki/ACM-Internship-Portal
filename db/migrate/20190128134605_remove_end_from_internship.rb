class RemoveEndFromInternship < ActiveRecord::Migration[5.2]
  def change
    remove_column :internships, :end, :date
  end
end
