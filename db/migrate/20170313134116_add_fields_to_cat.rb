class AddFieldsToCat < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :name, :string
    add_column :cats, :race, :string
    add_column :cats, :age, :integer
    add_column :cats, :address, :string
    add_column :cats, :price_per_day, :integer
    add_column :cats, :description, :text
    add_column :cats, :cage, :boolean, default: false
    add_column :cats, :litter, :boolean, default: false
    add_column :cats, :cat_tree, :boolean, default: false
    add_column :cats, :toys, :boolean, default: false
    add_column :cats, :bowl, :boolean, default: false
    add_column :cats, :outdoor, :boolean, default: false
    add_column :cats, :belly_rubs, :boolean, default: false
    add_reference :cats, :user, foreign_key: true, index: true
  end
end
