class CreateConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :connections do |t|
      t.references :route, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
