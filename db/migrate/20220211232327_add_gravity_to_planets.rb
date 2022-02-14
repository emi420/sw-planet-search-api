class AddGravityToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :gravity, :string
  end
end
