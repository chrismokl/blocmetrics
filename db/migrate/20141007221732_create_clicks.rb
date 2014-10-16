class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.timestamps
      t.string :id_name
      t.string :class_name
      t.string :element_name
    end
  end
end
