class CreateMinisters < ActiveRecord::Migration
  def change
    create_table :ministers do |t|
      t.integer :successive
      t.string :name
      t.integer :tenure
      t.integer :days
      t.integer :age
      t.string :birthdate
      t.string :deathdate
      t.string :birthplace

      t.timestamps
    end
  end
end
