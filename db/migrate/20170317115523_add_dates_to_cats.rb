class AddDatesToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :start_at, :date
    add_column :cats, :end_at, :date
  end
end
