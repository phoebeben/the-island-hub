class AddNumberOfGuestsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :guests, :string
  end
end
