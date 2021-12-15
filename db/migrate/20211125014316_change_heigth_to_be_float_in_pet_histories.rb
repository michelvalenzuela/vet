class ChangeHeigthToBeFloatInPetHistories < ActiveRecord::Migration[6.1]
  def change
    change_column :pet_histories, :heigth, :float
  end
end
