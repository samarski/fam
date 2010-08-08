class CreateFirms < ActiveRecord::Migration
  def self.up
    create_table :firms do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :postcode
      t.string :street
      t.string :vat_id

      t.timestamps
    end
  end

  def self.down
    drop_table :firms
  end
end
