class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text
      t.string :ip_address
      t.string :location

      t.timestamps
    end
  end
end
