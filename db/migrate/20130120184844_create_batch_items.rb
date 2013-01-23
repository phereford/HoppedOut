class CreateBatchItems < ActiveRecord::Migration
  def change
    create_table :batch_items do |t|
      t.belongs_to :batch
      t.references :itemable, polymorphic: true
      t.hstore :stored_attributes

      t.timestamps
    end
    add_index :batch_items, :batch_id
    add_index :batch_items, [:itemable_id, :itemable_type]
  end
end
