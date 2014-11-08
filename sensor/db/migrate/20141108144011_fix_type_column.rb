class FixTypeColumn < ActiveRecord::Migration
  def self.up
    rename_column :measurements, :type, :sensor_type
  end
end
