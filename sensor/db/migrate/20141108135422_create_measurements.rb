class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.decimal :type
      t.float :value

      t.timestamps
    end
  end
end
