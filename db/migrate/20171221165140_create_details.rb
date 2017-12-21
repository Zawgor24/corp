class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :name
      t.string :detail_type
      t.string :serial_number
      t.integer :price
      t.belongs_to :factory, foreign_key: true

      t.timestamps
    end
  end
end
