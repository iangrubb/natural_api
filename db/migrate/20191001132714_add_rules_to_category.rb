class AddRulesToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :rules, :string, :array => true
  end
end
