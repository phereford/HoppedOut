class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.belongs_to :user, null: false
      t.string :title, limit: 140, null: false
      t.text :description, null: false
      t.integer :calories, null: false
      t.hstore :size, null: false
      t.hstore :color, null: false
      t.hstore :bitterness, null: false
      t.hstore :alcohol, null: false
      t.hstore :gravity, null: false
      t.hstore :efficiency, null: false
      t.timestamps
    end

    add_index :batches, :user_id
    add_index :batches, :size, gist: true
    add_index :batches, :color, gist: true
    add_index :batches, :bitterness, gist: true
    add_index :batches, :alcohol, gist: true
    add_index :batches, :gravity, gist: true
    add_index :batches, :efficiency, gist: true
  end
end
