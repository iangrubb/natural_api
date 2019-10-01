class CreateProofs < ActiveRecord::Migration[6.0]
  def change
    create_table :proofs do |t|
      t.string :ptype
      t.jsonb :conclusion
      t.integer :owner_id
      t.string :owner_type

      t.timestamps
    end

    add_index :proofs, [:owner_type, :owner_id]


  end
end
