class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :cd
      t.string :name_f
      t.string :name_l
      t.string :nickname
      t.string :mail
      t.string :password
      t.integer :lock_version

      t.timestamps
    end
  end
end
