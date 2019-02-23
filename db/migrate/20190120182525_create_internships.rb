class CreateInternships < ActiveRecord::Migration[5.2]
  def change
    create_table :internships do |t|
      t.string :title
      t.text :description
      t.text :eligibility
      t.date :deadline
      t.string :location
      t.string :duration
      t.integer :stipend
      t.date :start
      t.date :end
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
