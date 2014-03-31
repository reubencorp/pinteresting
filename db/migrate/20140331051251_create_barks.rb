class CreateBarks < ActiveRecord::Migration
  def change
    create_table :barks do |t|
      t.string :full_name
      t.string :dog

      t.timestamps
    end
  end
end
