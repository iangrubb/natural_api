class CreatePremises < ActiveRecord::Migration[6.0]
  def change
    create_table :premises do |t|
      t.belongs_to :proof, null: false, foreign_key: true
      t.jsonb :content

      t.timestamps
    end
  end
end
