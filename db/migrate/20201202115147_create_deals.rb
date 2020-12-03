class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.references :pet, null: false, foreign_key: true
      t.float :value
      t.float :amount
      t.string :date

      t.timestamps
    end
  end
end
