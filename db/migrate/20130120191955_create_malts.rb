class CreateMalts < ActiveRecord::Migration
  def change
    create_table :malts do |t|
      t.string :name
      t.string :origin
      t.string :type
      t.integer :srm
      t.float :potential_sg

      t.timestamps
    end

    add_index :malts, :id
  end
end
