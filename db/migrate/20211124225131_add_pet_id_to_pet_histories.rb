class AddPetIdToPetHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :pet_histories, :pet_id, :integer
  end
end
