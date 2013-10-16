class CreateClowns < ActiveRecord::Migration
  def change
    create_table :clowns do |t|
      t.string :name
      t.integer :age
      t.string :color

      t.timestamps
    end
  end
end
