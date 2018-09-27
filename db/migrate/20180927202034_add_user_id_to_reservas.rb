class AddUserIdToReservas < ActiveRecord::Migration[5.2]
  def change
    add_column :reservas, :user_id, :integer
  end
end
