class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.boolean :status_pago
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
