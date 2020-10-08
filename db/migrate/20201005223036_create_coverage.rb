class CreateCoverage < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage do |t|

      t.timestamps
    end
  end
end
