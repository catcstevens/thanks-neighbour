class CreateNeighbours < ActiveRecord::Migration[5.2]
  def change
    create_table :neighbours do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :postcode

      t.timestamps
    end
  end
end
