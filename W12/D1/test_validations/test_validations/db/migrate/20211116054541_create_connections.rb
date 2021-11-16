class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.integer :owner_id, null: false
      t.integer :connection_id, null: false
      t.boolean :accepted_request

      t.timestamps
    end

    add_index :connections, [:owner_id, :connection_id], unique: true
  end
end
