class CreateMalts < ActiveRecord::Migration
  def change
    create_table :malts do |t|
      t.string :name
      t.integer :srm
      t.string :origin
      t.float :potential_sg
      t.string :type

      t.timestamps
    end
  end
end
