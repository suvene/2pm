class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :mail
      t.integer :lock_version

      t.timestamps
    end
  end
end
