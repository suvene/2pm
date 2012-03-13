class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :task_no, :null => false
      t.string :name, :null => false
      t.integer :lock_version, :default => 0

      t.timestamps
    end
  end
end
