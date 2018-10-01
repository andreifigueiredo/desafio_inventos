class AddConfirmationToReservas < ActiveRecord::Migration[5.2]
  def change
    add_column :reservas, :confirmation, :boolean, :default => false
  end
end
