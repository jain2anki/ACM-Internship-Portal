class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :field
      t.string :poc

      t.timestamps
    end
  end
end
