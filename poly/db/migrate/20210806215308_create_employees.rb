class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :las_name

      t.timestamps null: false
    end
  end
end
