class AddNbguestsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :nbguests, :integer
  end
end
