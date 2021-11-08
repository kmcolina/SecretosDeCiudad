class Addcolumntobooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :pago_user, :integer
  end
end
