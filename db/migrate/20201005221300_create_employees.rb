class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :active
      t.string :availability

      t.timestamps
    end
  end
end
