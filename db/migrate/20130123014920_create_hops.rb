class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :category
      t.float :max_alpha_acid
      t.float :min_alpha_acid
      t.string :name

      t.timestamps
    end
  end
end
