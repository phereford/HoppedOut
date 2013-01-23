class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.string :category
      t.float :min_alpha_acid
      t.float :max_alpha_acid

      t.timestamps
    end
  end
end
